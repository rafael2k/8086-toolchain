/* -*- mode: c; c-file-style: "bsd" -*- */
/* preproc.c   macro preprocessor for the Netwide Assembler
 *
 * The Netwide Assembler is copyright (C) 1996 Simon Tatham and
 * Julian Hall. All rights reserved. The software is
 * redistributable under the licence given in the file "Licence"
 * distributed in the NASM archive.
 *
 * initial version 18/iii/97 by Simon Tatham
 */

/* Typical flow of text through preproc
 *
 * pp_getline gets tokenised lines, either
 *
 *   from a macro expansion
 *
 * or
 *   {
 *   read_line  gets raw text from stdmacpos, or predef, or current input file
 *   tokenise   converts to tokens
 *   }
 *
 * expand_mmac_params is used to expand %1 etc., unless a macro is being
 * defined or a false conditional is being processed
 * (%0, %1, %+1, %-1, %%foo
 *
 * do_directive checks for directives
 *
 * expand_smacro is used to expand single line macros
 *
 * expand_mmacro is used to expand multi-line macros
 *
 * detoken is used to convert the line back to text
 */

#include <stdio.h>
#include <stdarg.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <ctype.h>
#include <limits.h>

#include "nasm.h"
#include "nasmlib.h"

typedef struct SMacro SMacro;
typedef struct MMacro MMacro;
typedef struct Context Context;
typedef struct Token Token;
typedef struct Blocks Blocks;
typedef struct Line Line;
typedef struct Include Include;
typedef struct Cond Cond;
typedef struct IncPath IncPath;

/*
 * Store the definition of a single-line macro.
 */
struct SMacro
{
    SMacro *next;
    char *name;
    int casesense;
    int nparam;
    int in_progress;
    Token *expansion;
};

/*
 * Store the definition of a multi-line macro. This is also used to
 * store the interiors of `%rep...%endrep' blocks, which are
 * effectively self-re-invoking multi-line macros which simply
 * don't have a name or bother to appear in the hash tables. %rep
 * blocks are signified by having a NULL `name' field.
 *
 * In a MMacro describing a `%rep' block, the `in_progress' field
 * isn't merely boolean, but gives the number of repeats left to
 * run.
 *
 * The `next' field is used for storing MMacros in hash tables; the
 * `next_active' field is for stacking them on istk entries.
 *
 * When a MMacro is being expanded, `params', `iline', `nparam',
 * `paramlen', `rotate' and `unique' are local to the invocation.
 */
struct MMacro
{
    MMacro *next;
    char *name;
    int casesense;
    int nparam_min, nparam_max;
    int plus;			/* is the last parameter greedy? */
    int nolist;			/* is this macro listing-inhibited? */
    int in_progress;
    Token *dlist;		/* All defaults as one list */
    Token **defaults;		/* Parameter default pointers */
    int ndefs;			/* number of default parameters */
    Line *expansion;

    MMacro *next_active;
    MMacro *rep_nest;		/* used for nesting %rep */
    Token **params;		/* actual parameters */
    Token *iline;		/* invocation line */
    int nparam, rotate, *paramlen;
    unsigned long unique;
    int lineno;			/* Current line number on expansion */
};

/*
 * The context stack is composed of a linked list of these.
 */
struct Context
{
    Context *next;
    SMacro *localmac;
    char *name;
    unsigned long number;
};

/*
 * This is the internal form which we break input lines up into.
 * Typically stored in linked lists.
 *
 * Note that `type' serves a double meaning: TOK_SMAC_PARAM is not
 * necessarily used as-is, but is intended to denote the number of
 * the substituted parameter. So in the definition
 *
 *     %define a(x,y) ( (x) & ~(y) )
 * 
 * the token representing `x' will have its type changed to
 * TOK_SMAC_PARAM, but the one representing `y' will be
 * TOK_SMAC_PARAM+1.
 *
 * TOK_INTERNAL_STRING is a dirty hack: it's a single string token
 * which doesn't need quotes around it. Used in the pre-include
 * mechanism as an alternative to trying to find a sensible type of
 * quote to use on the filename we were passed.
 */
struct Token
{
    Token *next;
    char *text;
    SMacro *mac;		/* associated macro for TOK_SMAC_END */
    int type;
};
enum
{
    TOK_WHITESPACE = 1, TOK_COMMENT, TOK_ID, TOK_PREPROC_ID, TOK_STRING,
    TOK_NUMBER, TOK_SMAC_END, TOK_OTHER, TOK_SMAC_PARAM,
    TOK_INTERNAL_STRING
};

/*
 * Multi-line macro definitions are stored as a linked list of
 * these, which is essentially a container to allow several linked
 * lists of Tokens.
 * 
 * Note that in this module, linked lists are treated as stacks
 * wherever possible. For this reason, Lines are _pushed_ on to the
 * `expansion' field in MMacro structures, so that the linked list,
 * if walked, would give the macro lines in reverse order; this
 * means that we can walk the list when expanding a macro, and thus
 * push the lines on to the `expansion' field in _istk_ in reverse
 * order (so that when popped back off they are in the right
 * order). It may seem cockeyed, and it relies on my design having
 * an even number of steps in, but it works...
 *
 * Some of these structures, rather than being actual lines, are
 * markers delimiting the end of the expansion of a given macro.
 * This is for use in the cycle-tracking and %rep-handling code.
 * Such structures have `finishes' non-NULL, and `first' NULL. All
 * others have `finishes' NULL, but `first' may still be NULL if
 * the line is blank.
 */
struct Line
{
    Line *next;
    MMacro *finishes;
    Token *first;
};

/*
 * To handle an arbitrary level of file inclusion, we maintain a
 * stack (ie linked list) of these things.
 */
struct Include
{
    Include *next;
    FILE *fp;
    Cond *conds;
    Line *expansion;
    char *fname;
    int lineno, lineinc;
    MMacro *mstk;		/* stack of active macros/reps */
};

/*
 * Include search path. This is simply a list of strings which get
 * prepended, in turn, to the name of an include file, in an
 * attempt to find the file if it's not in the current directory.
 */
struct IncPath
{
    IncPath *next;
    char *path;
};

/*
 * Conditional assembly: we maintain a separate stack of these for
 * each level of file inclusion. (The only reason we keep the
 * stacks separate is to ensure that a stray `%endif' in a file
 * included from within the true branch of a `%if' won't terminate
 * it and cause confusion: instead, rightly, it'll cause an error.)
 */
struct Cond
{
    Cond *next;
    int state;
};
enum
{
    /*
     * These states are for use just after %if or %elif: IF_TRUE
     * means the condition has evaluated to truth so we are
     * currently emitting, whereas IF_FALSE means we are not
     * currently emitting but will start doing so if a %else comes
     * up. In these states, all directives are admissible: %elif,
     * %else and %endif. (And of course %if.)
     */
    COND_IF_TRUE, COND_IF_FALSE,
    /*
     * These states come up after a %else: ELSE_TRUE means we're
     * emitting, and ELSE_FALSE means we're not. In ELSE_* states,
     * any %elif or %else will cause an error.
     */
    COND_ELSE_TRUE, COND_ELSE_FALSE,
    /*
     * This state means that we're not emitting now, and also that
     * nothing until %endif will be emitted at all. It's for use in
     * two circumstances: (i) when we've had our moment of emission
     * and have now started seeing %elifs, and (ii) when the
     * condition construct in question is contained within a
     * non-emitting branch of a larger condition construct.
     */
    COND_NEVER
};
#define emitting(x) ( (x) == COND_IF_TRUE || (x) == COND_ELSE_TRUE )

/* 
 * These defines are used as the possible return values for do_directive
 */
#define NO_DIRECTIVE_FOUND  0
#define DIRECTIVE_FOUND	    1

/*
 * Condition codes. Note that we use c_ prefix not C_ because C_ is
 * used in nasm.h for the "real" condition codes. At _this_ level,
 * we treat CXZ and ECXZ as condition codes, albeit non-invertible
 * ones, so we need a different enum...
 */
static const char *conditions[] = {
    "a", "ae", "b", "be", "c", "cxz", "e", "ecxz", "g", "ge", "l", "le",
    "na", "nae", "nb", "nbe", "nc", "ne", "ng", "nge", "nl", "nle", "no",
    "np", "ns", "nz", "o", "p", "pe", "po", "s", "z"
};
enum
{
    c_A, c_AE, c_B, c_BE, c_C, c_CXZ, c_E, c_ECXZ, c_G, c_GE, c_L, c_LE,
    c_NA, c_NAE, c_NB, c_NBE, c_NC, c_NE, c_NG, c_NGE, c_NL, c_NLE, c_NO,
    c_NP, c_NS, c_NZ, c_O, c_P, c_PE, c_PO, c_S, c_Z
};
static int inverse_ccs[] = {
    c_NA, c_NAE, c_NB, c_NBE, c_NC, -1, c_NE, -1, c_NG, c_NGE, c_NL, c_NLE,
    c_A, c_AE, c_B, c_BE, c_C, c_E, c_G, c_GE, c_L, c_LE, c_O, c_P, c_S,
    c_Z, c_NO, c_NP, c_PO, c_PE, c_NS, c_NZ
};

/*
 * Directive names.
 */
static const char *directives[] = {
    "%arg",
    "%assign", "%clear", "%define", "%elif", "%elifctx", "%elifdef",
    "%elifid", "%elifidn", "%elifidni", "%elifmacro", "%elifnctx", "%elifndef",
    "%elifnid", "%elifnidn", "%elifnidni", "%elifnmacro", "%elifnnum", "%elifnstr",
    "%elifnum", "%elifstr", "%else", "%endif", "%endm", "%endmacro",
    "%endrep", "%error", "%exitrep", "%iassign", "%idefine", "%if",
    "%ifctx", "%ifdef", "%ifid", "%ifidn", "%ifidni", "%ifmacro", "%ifnctx",
    "%ifndef", "%ifnid", "%ifnidn", "%ifnidni", "%ifnmacro", "%ifnnum",
    "%ifnstr", "%ifnum", "%ifstr", "%imacro", "%include",
    "%ixdefine", "%line",
    "%local",
    "%macro", "%pop", "%push", "%rep", "%repl", "%rotate",
    "%stacksize",
    "%strlen", "%substr", "%undef", "%xdefine"
};
enum
{
    PP_ARG,
    PP_ASSIGN, PP_CLEAR, PP_DEFINE, PP_ELIF, PP_ELIFCTX, PP_ELIFDEF,
    PP_ELIFID, PP_ELIFIDN, PP_ELIFIDNI, PP_ELIFMACRO, PP_ELIFNCTX, PP_ELIFNDEF,
    PP_ELIFNID, PP_ELIFNIDN, PP_ELIFNIDNI, PP_ELIFNMACRO, PP_ELIFNNUM, PP_ELIFNSTR,
    PP_ELIFNUM, PP_ELIFSTR, PP_ELSE, PP_ENDIF, PP_ENDM, PP_ENDMACRO,
    PP_ENDREP, PP_ERROR, PP_EXITREP, PP_IASSIGN, PP_IDEFINE, PP_IF,
    PP_IFCTX, PP_IFDEF, PP_IFID, PP_IFIDN, PP_IFIDNI, PP_IFMACRO, PP_IFNCTX,
    PP_IFNDEF, PP_IFNID, PP_IFNIDN, PP_IFNIDNI, PP_IFNMACRO, PP_IFNNUM,
    PP_IFNSTR, PP_IFNUM, PP_IFSTR, PP_IMACRO, PP_INCLUDE,
    PP_IXDEFINE, PP_LINE,
    PP_LOCAL,
    PP_MACRO, PP_POP, PP_PUSH, PP_REP, PP_REPL, PP_ROTATE,
    PP_STACKSIZE,
    PP_STRLEN, PP_SUBSTR, PP_UNDEF, PP_XDEFINE
};

/* If this is a an IF, ELIF, ELSE or ENDIF keyword */
static int is_condition(int arg)
{
    return ((arg >= PP_ELIF) && (arg <= PP_ENDIF)) ||
	((arg >= PP_IF) && (arg <= PP_IFSTR));
}

/* For TASM compatibility we need to be able to recognise TASM compatible
 * conditional compilation directives. Using the NASM pre-processor does
 * not work, so we look for them specifically from the following list and
 * then jam in the equivalent NASM directive into the input stream.
 */

#ifndef MAX
#       define MAX(a,b) ( ((a) > (b)) ? (a) : (b))
#endif

enum
{
    TM_ARG, TM_ELIF, TM_ELSE, TM_ENDIF, TM_IF, TM_IFDEF, TM_IFDIFI,
    TM_IFNDEF, TM_INCLUDE, TM_LOCAL
};

static const char *tasm_directives[] = {
    "arg", "elif", "else", "endif", "if", "ifdef", "ifdifi",
    "ifndef", "include", "local"
};

static int StackSize = 4;
static char *StackPointer = "ebp";
static int ArgOffset = 8;
static int LocalOffset = 4;


static Context *cstk;
static Include *istk;
static IncPath *ipath = NULL;

static efunc _error;		/* Pointer to client-provided error reporting function */
static evalfunc evaluate;

static int pass;		/* HACK: pass 0 = generate dependencies only */

static unsigned long unique;	/* unique identifier numbers */

static Line *predef = NULL;

static ListGen *list;

/*
 * The number of hash values we use for the macro lookup tables.
 * FIXME: We should *really* be able to configure this at run time,
 * or even have the hash table automatically expanding when necessary.
 */
#define NHASH 31

/*
 * The current set of multi-line macros we have defined.
 */
static MMacro *mmacros[NHASH];

/*
 * The current set of single-line macros we have defined.
 */
static SMacro *smacros[NHASH];

/*
 * The multi-line macro we are currently defining, or the %rep
 * block we are currently reading, if any.
 */
static MMacro *defining;

/*
 * The number of macro parameters to allocate space for at a time.
 */
#define PARAM_DELTA 16

/*
 * The standard macro set: defined as `static char *stdmac[]'. Also
 * gives our position in the macro set, when we're processing it.
 */
#include "macros.c"
static const char **stdmacpos;

/*
 * The extra standard macros that come from the object format, if
 * any.
 */
static const char **extrastdmac = NULL;
int any_extrastdmac;

/*
 * Tokens are allocated in blocks to improve speed
 */
#define TOKEN_BLOCKSIZE 4096
static Token *freeTokens = NULL;
struct Blocks {
	Blocks *next;
	void *chunk;
};

static Blocks blocks = { NULL, NULL };

/*
 * Forward declarations.
 */
static Token *expand_mmac_params(Token * tline);
static Token *expand_smacro(Token * tline);
static Token *expand_id(Token * tline);
static Context *get_ctx(char *name, int all_contexts);
static void make_tok_num(Token * tok, long val);
static void error(int severity, const char *fmt, ...);
static void *new_Block(size_t size);
static void delete_Blocks(void);
static Token *new_Token(Token * next, int type, char *text, int txtlen);
static Token *delete_Token(Token * t);

/*
 * Macros for safe checking of token pointers, avoid *(NULL)
 */
#define tok_type_(x,t) ((x) && (x)->type == (t))
#define skip_white_(x) if (tok_type_((x), TOK_WHITESPACE)) (x)=(x)->next
#define tok_is_(x,v) (tok_type_((x), TOK_OTHER) && !strcmp((x)->text,(v)))
#define tok_isnt_(x,v) ((x) && ((x)->type!=TOK_OTHER || strcmp((x)->text,(v))))

/* Handle TASM specific directives, which do not contain a % in
 * front of them. We do it here because I could not find any other
 * place to do it for the moment, and it is a hack (ideally it would
 * be nice to be able to use the NASM pre-processor to do it).
 */
static char *
check_tasm_directive(char *line)
{
    int i, j, k, m, len;
    char *p = line, *oldline, oldchar;

    /* Skip whitespace */
    while (isspace(*p) && *p != 0)
	p++;

    /* Binary search for the directive name */
    i = -1;
    j = elements(tasm_directives);
    len = 0;
    while (!isspace(p[len]) && p[len] != 0)
	len++;
    if (len)
    {
	oldchar = p[len];
	p[len] = 0;
	while (j - i > 1)
	{
	    k = (j + i) / 2;
	    m = nasm_stricmp(p, tasm_directives[k]);
	    if (m == 0)
	    {
		/* We have found a directive, so jam a % in front of it
		 * so that NASM will then recognise it as one if it's own.
		 */
		p[len] = oldchar;
		len = strlen(p);
		oldline = line;
		line = nasm_malloc(len + 2);
		line[0] = '%';
		if (k == TM_IFDIFI)
		{
		    /* NASM does not recognise IFDIFI, so we convert it to
		     * %ifdef BOGUS. This is not used in NASM comaptible
		     * code, but does need to parse for the TASM macro
		     * package.
		     */
		    strcpy(line + 1, "ifdef BOGUS");
		}
		else
		{
		    memcpy(line + 1, p, len + 1);
		}
		nasm_free(oldline);
		return line;
	    }
	    else if (m < 0)
	    {
		j = k;
	    }
	    else
		i = k;
	}
	p[len] = oldchar;
    }
    return line;
}

/*
 * The pre-preprocessing stage... This function translates line
 * number indications as they emerge from GNU cpp (`# lineno "file"
 * flags') into NASM preprocessor line number indications (`%line
 * lineno file').
 */
static char *
prepreproc(char *line)
{
    int lineno, fnlen;
    char *fname, *oldline;

    if (line[0] == '#' && line[1] == ' ')
    {
	oldline = line;
	fname = oldline + 2;
	lineno = atoi(fname);
	fname += strspn(fname, "0123456789 ");
	if (*fname == '"')
	    fname++;
	fnlen = strcspn(fname, "\"");
	line = nasm_malloc(20 + fnlen);
	sprintf(line, "%%line %d %.*s", lineno, fnlen, fname);
	nasm_free(oldline);
    }
    if (tasm_compatible_mode)
	return check_tasm_directive(line);
    return line;
}

/*
 * The hash function for macro lookups. Note that due to some
 * macros having case-insensitive names, the hash function must be
 * invariant under case changes. We implement this by applying a
 * perfectly normal hash function to the uppercase of the string.
 */
static int
hash(char *s)
{
    unsigned int h = 0;
    int i = 0;
    /*
     * Powers of three, mod 31.
     */
    static const int multipliers[] = {
	1, 3, 9, 27, 19, 26, 16, 17, 20, 29, 25, 13, 8, 24, 10,
	30, 28, 22, 4, 12, 5, 15, 14, 11, 2, 6, 18, 23, 7, 21
    };


    while (*s)
    {
	h += multipliers[i] * (unsigned char) (toupper(*s));
	s++;
	if (++i >= elements(multipliers))
	    i = 0;
    }
    h %= NHASH;
    return h;
}

/*
 * Free a linked list of tokens.
 */
static void
free_tlist(Token * list)
{
    while (list)
    {
	list = delete_Token(list);
    }
}

/*
 * Free a linked list of lines.
 */
static void
free_llist(Line * list)
{
    Line *l;
    while (list)
    {
	l = list;
	list = list->next;
	free_tlist(l->first);
	nasm_free(l);
    }
}

/*
 * Free an MMacro
 */
static void
free_mmacro(MMacro * m)
{
    nasm_free(m->name);
    free_tlist(m->dlist);
    nasm_free(m->defaults);
    free_llist(m->expansion);
    nasm_free(m);
}

/*
 * Pop the context stack.
 */
static void
ctx_pop(void)
{
    Context *c = cstk;
    SMacro *smac, *s;

    cstk = cstk->next;
    smac = c->localmac;
    while (smac)
    {
	s = smac;
	smac = smac->next;
	nasm_free(s->name);
	free_tlist(s->expansion);
	nasm_free(s);
    }
    nasm_free(c->name);
    nasm_free(c);
}

#define BUF_DELTA 512
/*
 * Read a line from the top file in istk, handling multiple CR/LFs
 * at the end of the line read, and handling spurious ^Zs. Will
 * return lines from the standard macro set if this has not already
 * been done.
 */
static char *
read_line(void)
{
    char *buffer, *p, *q;
    int bufsize, continued_count;

    if (stdmacpos)
    {
	if (*stdmacpos)
	{
	    char *ret = nasm_strdup(*stdmacpos++);
	    if (!*stdmacpos && any_extrastdmac)
	    {
		stdmacpos = extrastdmac;
		any_extrastdmac = FALSE;
		return ret;
	    }
	    /*
	     * Nasty hack: here we push the contents of `predef' on
	     * to the top-level expansion stack, since this is the
	     * most convenient way to implement the pre-include and
	     * pre-define features.
	     */
	    if (!*stdmacpos)
	    {
		Line *pd, *l;
		Token *head, **tail, *t;

		for (pd = predef; pd; pd = pd->next)
		{
		    head = NULL;
		    tail = &head;
		    for (t = pd->first; t; t = t->next)
		    {
			*tail = new_Token(NULL, t->type, t->text, 0);
			tail = &(*tail)->next;
		    }
		    l = nasm_malloc(sizeof(Line));
		    l->next = istk->expansion;
		    l->first = head;
		    l->finishes = FALSE;
		    istk->expansion = l;
		}
	    }
	    return ret;
	}
	else
	{
	    stdmacpos = NULL;
	}
    }

    bufsize = BUF_DELTA;
    buffer = nasm_malloc(BUF_DELTA);
    p = buffer;
    continued_count = 0;
    while (1)
    {
	q = fgets(p, bufsize - (p - buffer), istk->fp);
	if (!q)
	    break;
	p += strlen(p);
	if (p > buffer && p[-1] == '\n')
	{
           /* Convert backslash-CRLF line continuation sequences into
              nothing at all (for DOS and Windows) */
           if (((p - 2) > buffer) && (p[-3] == '\\') && (p[-2] == '\r')) {
               p -= 3;
               *p = 0;
               continued_count++;
           }
           /* Also convert backslash-LF line continuation sequences into
              nothing at all (for Unix) */
           else if (((p - 1) > buffer) && (p[-2] == '\\')) {
               p -= 2;
               *p = 0;
               continued_count++;
           }
           else {
               break;
           }
	}
	if (p - buffer > bufsize - 10)
	{
	    long offset = p - buffer;
	    bufsize += BUF_DELTA;
	    buffer = nasm_realloc(buffer, bufsize);
	    p = buffer + offset;	/* prevent stale-pointer problems */
	}
    }

    if (!q && p == buffer)
    {
	nasm_free(buffer);
	return NULL;
    }

    src_set_linnum(src_get_linnum() + istk->lineinc + (continued_count * istk->lineinc));

    /*
     * Play safe: remove CRs as well as LFs, if any of either are
     * present at the end of the line.
     */
    while (--p >= buffer && (*p == '\n' || *p == '\r'))
	*p = '\0';

    /*
     * Handle spurious ^Z, which may be inserted into source files
     * by some file transfer utilities.
     */
    buffer[strcspn(buffer, "\032")] = '\0';

    list->line(LIST_READ, buffer);

    return buffer;
}

/*
 * Tokenise a line of text. This is a very simple process since we
 * don't need to parse the value out of e.g. numeric tokens: we
 * simply split one string into many.
 */
static Token *
tokenise(char *line)
{
    char *p = line;
    int type;
    Token *list = NULL;
    Token *t, **tail = &list;

    while (*line)
    {
	p = line;
	if (*p == '%')
	{
		p++;
		if ( isdigit(*p) ||
			((*p == '-' || *p == '+') && isdigit(p[1])) ||
			((*p == '+') && (isspace(p[1]) || !p[1])))
				{
			do
			{
			p++;
			}
			while (isdigit(*p));
			type = TOK_PREPROC_ID;
		}
		else if (*p == '{')
		{
			p++;
			while (*p && *p != '}')
			{
			p[-1] = *p;
			p++;
			}
			p[-1] = '\0';
			if (*p)
			p++;
			type = TOK_PREPROC_ID;
		}
		else if (isidchar(*p) ||
				((*p == '!' || *p == '%' || *p == '$') &&
					isidchar(p[1])))
		{
			do
			{
			p++;
			}
			while (isidchar(*p));
			type = TOK_PREPROC_ID;
		}
		else
		{
			type = TOK_OTHER;
			if (*p == '%')
				p++;
		}
	}
	else if (isidstart(*p) || (*p == '$' && isidstart(p[1])))
	{
	    type = TOK_ID;
	    p++;
	    while (*p && isidchar(*p))
		p++;
	}
	else if (*p == '\'' || *p == '"')
	{
	    /*
	     * A string token.
	     */
	    char c = *p;
	    p++;
	    type = TOK_STRING;
	    while (*p && *p != c)
		p++;
	    if (*p)
	    {
		p++;
	    }
	    else
	    {
		error(ERR_WARNING, "unterminated string");
	    }
	}
	else if (isnumstart(*p))
	{
	    /*
	     * A number token.
	     */
	    type = TOK_NUMBER;
	    p++;
	    while (*p && isnumchar(*p))
		p++;
	}
	else if (isspace(*p))
	{
	    type = TOK_WHITESPACE;
	    p++;
	    while (*p && isspace(*p))
		p++;
	    /*
	     * Whitespace just before end-of-line is discarded by
	     * pretending it's a comment; whitespace just before a
	     * comment gets lumped into the comment.
	     */
	    if (!*p || *p == ';')
	    {
		type = TOK_COMMENT;
		while (*p)
		    p++;
	    }
	}
	else if (*p == ';')
	{
	    type = TOK_COMMENT;
	    while (*p)
		p++;
	}
	else
	{
	    /*
	     * Anything else is an operator of some kind. We check
	     * for all the double-character operators (>>, <<, //,
	     * %%, <=, >=, ==, !=, <>, &&, ||, ^^), but anything
	     * else is a single-character operator.
	     */
	    type = TOK_OTHER;
	    if ((p[0] == '>' && p[1] == '>') ||
		    (p[0] == '<' && p[1] == '<') ||
		    (p[0] == '/' && p[1] == '/') ||
		    (p[0] == '<' && p[1] == '=') ||
		    (p[0] == '>' && p[1] == '=') ||
		    (p[0] == '=' && p[1] == '=') ||
		    (p[0] == '!' && p[1] == '=') ||
		    (p[0] == '<' && p[1] == '>') ||
		    (p[0] == '&' && p[1] == '&') ||
		    (p[0] == '|' && p[1] == '|') ||
		    (p[0] == '^' && p[1] == '^'))
	    {
		p++;
	    }
	    p++;
	}
	if (type != TOK_COMMENT)
	{
	    *tail = t = new_Token(NULL, type, line, p - line);
	    tail = &t->next;
	}
	line = p;
    }
    return list;
}

/*
 * this function allocates a new managed block of memory and
 * returns a pointer to the block.  The managed blocks are 
 * deleted only all at once by the delete_Blocks function.
 */
static void *
new_Block(size_t size)
{
	Blocks *b = &blocks;
	
	/* first, get to the end of the linked list	 */
	while (b->next)
		b = b->next;
	/* now allocate the requested chunk */
	b->chunk = nasm_malloc(size);
	
	/* now allocate a new block for the next request */
	b->next = nasm_malloc(sizeof(Blocks));
	/* and initialize the contents of the new block */
	b->next->next = NULL;
	b->next->chunk = NULL;
	return b->chunk;
}

/*
 * this function deletes all managed blocks of memory
 */
static void
delete_Blocks(void)
{
	Blocks *a,*b = &blocks;

	/* 
	 * keep in mind that the first block, pointed to by blocks
	 * is a static and not dynamically allocated, so we don't 
	 * free it.
	 */
	while (b)
	{
		if (b->chunk)
			nasm_free(b->chunk);
		a = b;
		b = b->next;
                if (a != &blocks)
			nasm_free(a);
	}
}	

/*
 *  this function creates a new Token and passes a pointer to it 
 *  back to the caller.  It sets the type and text elements, and
 *  also the mac and next elements to NULL.
 */
static Token *
new_Token(Token * next, int type, char *text, int txtlen)
{
    Token *t;
    int i;

    if (freeTokens == NULL)
    {
	freeTokens = (Token *)new_Block(TOKEN_BLOCKSIZE * sizeof(Token));
	for (i = 0; i < TOKEN_BLOCKSIZE - 1; i++)
	    freeTokens[i].next = &freeTokens[i + 1];
	freeTokens[i].next = NULL;
    }
    t = freeTokens;
    freeTokens = t->next;
    t->next = next;
    t->mac = NULL;
    t->type = type;
    if (type == TOK_WHITESPACE || text == NULL)
    {
	t->text = NULL;
    }
    else
    {
	if (txtlen == 0)
	    txtlen = strlen(text);
	t->text = nasm_malloc(1 + txtlen);
	strncpy(t->text, text, txtlen);
	t->text[txtlen] = '\0';
    }
    return t;
}

static Token *
delete_Token(Token * t)
{
    Token *next = t->next;
    nasm_free(t->text);
    t->next = freeTokens;
    freeTokens = t;
    return next;
}

/*
 * Convert a line of tokens back into text.
 * If expand_locals is not zero, identifiers of the form "%$*xxx"
 * will be transformed into ..@ctxnum.xxx
 */
static char *
detoken(Token * tlist, int expand_locals)
{
    Token *t;
    int len;
    char *line, *p;

    len = 0;
    for (t = tlist; t; t = t->next)
    {
	if (t->type == TOK_PREPROC_ID && t->text[1] == '!')
	{
	    char *p = getenv(t->text + 2);
	    nasm_free(t->text);
	    if (p)
		t->text = nasm_strdup(p);
	    else
		t->text = NULL;
	}
	/* Expand local macros here and not during preprocessing */
	if (expand_locals &&
		t->type == TOK_PREPROC_ID && t->text &&
		t->text[0] == '%' && t->text[1] == '$')
	{
	    Context *ctx = get_ctx(t->text, FALSE);
	    if (ctx)
	    {
		char buffer[40];
		char *p, *q = t->text + 2;

		q += strspn(q, "$");
		sprintf(buffer, "..@%lu.", ctx->number);
		p = nasm_strcat(buffer, q);
		nasm_free(t->text);
		t->text = p;
	    }
	}
	if (t->type == TOK_WHITESPACE)
	{
	    len++;
	}
	else if (t->text)
	{
	    len += strlen(t->text);
	}
    }
    p = line = nasm_malloc(len + 1);
    for (t = tlist; t; t = t->next)
    {
	if (t->type == TOK_WHITESPACE)
	{
	    *p = ' ';
		p++;
		*p = '\0';
	}
	else if (t->text)
	{
	    strcpy(p, t->text);
	    p += strlen(p);
	}
    }
    *p = '\0';
    return line;
}

/*
 * A scanner, suitable for use by the expression evaluator, which
 * operates on a line of Tokens. Expects a pointer to a pointer to
 * the first token in the line to be passed in as its private_data
 * field.
 */
static int
ppscan(void *private_data, struct tokenval *tokval)
{
    Token **tlineptr = private_data;
    Token *tline;

    do
    {
	tline = *tlineptr;
	*tlineptr = tline ? tline->next : NULL;
    }
    while (tline && (tline->type == TOK_WHITESPACE ||
		    tline->type == TOK_COMMENT));

    if (!tline)
	return tokval->t_type = TOKEN_EOS;

    if (tline->text[0] == '$' && !tline->text[1])
	return tokval->t_type = TOKEN_HERE;
    if (tline->text[0] == '$' && tline->text[1] == '$' && !tline->text[2])
	return tokval->t_type = TOKEN_BASE;

    if (tline->type == TOK_ID)
    {
	tokval->t_charptr = tline->text;
	if (tline->text[0] == '$')
	{
	    tokval->t_charptr++;
	    return tokval->t_type = TOKEN_ID;
	}

	/*
	 * This is the only special case we actually need to worry
	 * about in this restricted context.
	 */
	if (!nasm_stricmp(tline->text, "seg"))
	    return tokval->t_type = TOKEN_SEG;

	return tokval->t_type = TOKEN_ID;
    }

    if (tline->type == TOK_NUMBER)
    {
	int rn_error;

	tokval->t_integer = readnum(tline->text, &rn_error);
	if (rn_error)
	    return tokval->t_type = TOKEN_ERRNUM;
	tokval->t_charptr = NULL;
	return tokval->t_type = TOKEN_NUM;
    }

    if (tline->type == TOK_STRING)
    {
	int rn_warn;
	char q, *r;
	int l;

	r = tline->text;
	q = *r++;
	l = strlen(r);

	if (l == 0 || r[l - 1] != q)
	    return tokval->t_type = TOKEN_ERRNUM;
	tokval->t_integer = readstrnum(r, l - 1, &rn_warn);
	if (rn_warn)
	    error(ERR_WARNING | ERR_PASS1, "character constant too long");
	tokval->t_charptr = NULL;
	return tokval->t_type = TOKEN_NUM;
    }

    if (tline->type == TOK_OTHER)
    {
	if (!strcmp(tline->text, "<<"))
	    return tokval->t_type = TOKEN_SHL;
	if (!strcmp(tline->text, ">>"))
	    return tokval->t_type = TOKEN_SHR;
	if (!strcmp(tline->text, "//"))
	    return tokval->t_type = TOKEN_SDIV;
	if (!strcmp(tline->text, "%%"))
	    return tokval->t_type = TOKEN_SMOD;
	if (!strcmp(tline->text, "=="))
	    return tokval->t_type = TOKEN_EQ;
	if (!strcmp(tline->text, "<>"))
	    return tokval->t_type = TOKEN_NE;
	if (!strcmp(tline->text, "!="))
	    return tokval->t_type = TOKEN_NE;
	if (!strcmp(tline->text, "<="))
	    return tokval->t_type = TOKEN_LE;
	if (!strcmp(tline->text, ">="))
	    return tokval->t_type = TOKEN_GE;
	if (!strcmp(tline->text, "&&"))
	    return tokval->t_type = TOKEN_DBL_AND;
	if (!strcmp(tline->text, "^^"))
	    return tokval->t_type = TOKEN_DBL_XOR;
	if (!strcmp(tline->text, "||"))
	    return tokval->t_type = TOKEN_DBL_OR;
    }

    /*
     * We have no other options: just return the first character of
     * the token text.
     */
    return tokval->t_type = tline->text[0];
}

/*
 * Compare a string to the name of an existing macro; this is a
 * simple wrapper which calls either strcmp or nasm_stricmp
 * depending on the value of the `casesense' parameter.
 */
static int
mstrcmp(char *p, char *q, int casesense)
{
    return casesense ? strcmp(p, q) : nasm_stricmp(p, q);
}

/*
 * Return the Context structure associated with a %$ token. Return
 * NULL, having _already_ reported an error condition, if the
 * context stack isn't deep enough for the supplied number of $
 * signs.
 * If all_contexts == TRUE, contexts that enclose current are
 * also scanned for such smacro, until it is found; if not -
 * only the context that directly results from the number of $'s
 * in variable's name.
 */
static Context *
get_ctx(char *name, int all_contexts)
{
    Context *ctx;
    SMacro *m;
    int i;

    if (!name || name[0] != '%' || name[1] != '$')
	return NULL;

    if (!cstk)
    {
	error(ERR_NONFATAL, "`%s': context stack is empty", name);
	return NULL;
    }

    for (i = strspn(name + 2, "$"), ctx = cstk; (i > 0) && ctx; i--)
    {
	ctx = ctx->next;
/*        i--;  Lino - 02/25/02 */
    }
    if (!ctx)
    {
	error(ERR_NONFATAL, "`%s': context stack is only"
		" %d level%s deep", name, i - 1, (i == 2 ? "" : "s"));
	return NULL;
    }
    if (!all_contexts)
	return ctx;

    do
    {
	/* Search for this smacro in found context */
	m = ctx->localmac;
	while (m)
	{
	    if (!mstrcmp(m->name, name, m->casesense))
		return ctx;
	    m = m->next;
	}
	ctx = ctx->next;
    }
    while (ctx);
    return NULL;
}

/* Add a slash to the end of a path if it is missing. We use the
 * forward slash to make it compatible with Unix systems.
 */
static void
backslash(char *s)
{
    int pos = strlen(s);
    if (s[pos - 1] != '\\' && s[pos - 1] != '/')
    {
	s[pos] = '/';
	s[pos + 1] = '\0';
    }
}

/*
 * Open an include file. This routine must always return a valid
 * file pointer if it returns - it's responsible for throwing an
 * ERR_FATAL and bombing out completely if not. It should also try
 * the include path one by one until it finds the file or reaches
 * the end of the path.
 */
static FILE *
inc_fopen(char *file)
{
    FILE *fp;
    char *prefix = "", *combine;
    IncPath *ip = ipath;
    static int namelen = 0;
    int len = strlen(file);

    while (1)
    {
	combine = nasm_malloc(strlen(prefix) + 1 + len + 1);
	strcpy(combine, prefix);
	if (prefix[0] != 0)
	    backslash(combine);
	strcat(combine, file);
	fp = fopen(combine, "r");
	if (pass == 0 && fp)
	{
	    namelen += strlen(combine) + 1;
	    if (namelen > 62)
	    {
		printf(" \\\n  ");
		namelen = 2;
	    }
	    printf(" %s", combine);
	}
	nasm_free(combine);
	if (fp)
	    return fp;
	if (!ip)
	    break;
	prefix = ip->path;
	ip = ip->next;
    }

    error(ERR_FATAL, "unable to open include file `%s'", file);
    return NULL;		/* never reached - placate compilers */
}

/*
 * Determine if we should warn on defining a single-line macro of
 * name `name', with `nparam' parameters. If nparam is 0 or -1, will
 * return TRUE if _any_ single-line macro of that name is defined.
 * Otherwise, will return TRUE if a single-line macro with either
 * `nparam' or no parameters is defined.
 *
 * If a macro with precisely the right number of parameters is
 * defined, or nparam is -1, the address of the definition structure
 * will be returned in `defn'; otherwise NULL will be returned. If `defn'
 * is NULL, no action will be taken regarding its contents, and no
 * error will occur.
 *
 * Note that this is also called with nparam zero to resolve
 * `ifdef'.
 *
 * If you already know which context macro belongs to, you can pass
 * the context pointer as first parameter; if you won't but name begins
 * with %$ the context will be automatically computed. If all_contexts
 * is true, macro will be searched in outer contexts as well.
 */
static int
smacro_defined(Context * ctx, char *name, int nparam, SMacro ** defn,
	int nocase)
{
    SMacro *m;

    if (ctx)
	m = ctx->localmac;
    else if (name[0] == '%' && name[1] == '$')
    {
	if (cstk)
	    ctx = get_ctx(name, FALSE);
	if (!ctx)
	    return FALSE;	/* got to return _something_ */
	m = ctx->localmac;
    }
    else
	m = smacros[hash(name)];

    while (m)
    {
	if (!mstrcmp(m->name, name, m->casesense && nocase) &&
		(nparam <= 0 || m->nparam == 0 || nparam == m->nparam))
	{
	    if (defn)
	    {
		if (nparam == m->nparam || nparam == -1)
		    *defn = m;
		else
		    *defn = NULL;
	    }
	    return TRUE;
	}
	m = m->next;
    }

    return FALSE;
}

/*
 * Count and mark off the parameters in a multi-line macro call.
 * This is called both from within the multi-line macro expansion
 * code, and also to mark off the default parameters when provided
 * in a %macro definition line.
 */
static void
count_mmac_params(Token * t, int *nparam, Token *** params)
{
    int paramsize, brace;

    *nparam = paramsize = 0;
    *params = NULL;
    while (t)
    {
	if (*nparam >= paramsize)
	{
	    paramsize += PARAM_DELTA;
	    *params = nasm_realloc(*params, sizeof(**params) * paramsize);
	}
	skip_white_(t);
	brace = FALSE;
	if (tok_is_(t, "{"))
	    brace = TRUE;
	(*params)[(*nparam)++] = t;
	while (tok_isnt_(t, brace ? "}" : ","))
	    t = t->next;
	if (t)
	{			/* got a comma/brace */
	    t = t->next;
	    if (brace)
	    {
		/*
		 * Now we've found the closing brace, look further
		 * for the comma.
		 */
		skip_white_(t);
		if (tok_isnt_(t, ","))
		{
		    error(ERR_NONFATAL,
			    "braces do not enclose all of macro parameter");
		    while (tok_isnt_(t, ","))
			t = t->next;
		}
		if (t)
		    t = t->next;	/* eat the comma */
	    }
	}
    }
}

/*
 * Determine whether one of the various `if' conditions is true or
 * not.
 *
 * We must free the tline we get passed.
 */
static int
if_condition(Token * tline, int i)
{
    int j, casesense;
    Token *t, *tt, **tptr, *origline;
    struct tokenval tokval;
    expr *evalresult;

    origline = tline;

    switch (i)
    {
	case PP_IFCTX:
	case PP_ELIFCTX:
	case PP_IFNCTX:
	case PP_ELIFNCTX:
	    j = FALSE;		/* have we matched yet? */
	    while (cstk && tline)
	    {
		skip_white_(tline);
		if (!tline || tline->type != TOK_ID)
		{
		    error(ERR_NONFATAL,
			    "`%s' expects context identifiers",
			    directives[i]);
		    free_tlist(origline);
		    return -1;
		}
		if (!nasm_stricmp(tline->text, cstk->name))
		    j = TRUE;
		tline = tline->next;
	    }
	    if (i == PP_IFNCTX || i == PP_ELIFNCTX)
		j = !j;
	    free_tlist(origline);
	    return j;

	case PP_IFDEF:
	case PP_ELIFDEF:
	case PP_IFNDEF:
	case PP_ELIFNDEF:
	    j = FALSE;		/* have we matched yet? */
	    while (tline)
	    {
		skip_white_(tline);
		if (!tline || (tline->type != TOK_ID &&
				(tline->type != TOK_PREPROC_ID ||
					tline->text[1] != '$')))
		{
		    error(ERR_NONFATAL,
			  "`%s' expects macro identifiers",
			  directives[i]);
		    free_tlist(origline);
		    return -1;
		}
		if (smacro_defined(NULL, tline->text, 0, NULL, 1))
		    j = TRUE;
		tline = tline->next;
	    }
	    if (i == PP_IFNDEF || i == PP_ELIFNDEF)
		j = !j;
	    free_tlist(origline);
	    return j;

	case PP_IFIDN:
	case PP_ELIFIDN:
	case PP_IFNIDN:
	case PP_ELIFNIDN:
	case PP_IFIDNI:
	case PP_ELIFIDNI:
	case PP_IFNIDNI:
	case PP_ELIFNIDNI:
	    tline = expand_smacro(tline);
	    t = tt = tline;
	    while (tok_isnt_(tt, ","))
		tt = tt->next;
	    if (!tt)
	    {
		error(ERR_NONFATAL,
			"`%s' expects two comma-separated arguments",
			directives[i]);
		free_tlist(tline);
		return -1;
	    }
	    tt = tt->next;
	    casesense = (i == PP_IFIDN || i == PP_ELIFIDN ||
		    i == PP_IFNIDN || i == PP_ELIFNIDN);
	    j = TRUE;		/* assume equality unless proved not */
	    while ((t->type != TOK_OTHER || strcmp(t->text, ",")) && tt)
	    {
		if (tt->type == TOK_OTHER && !strcmp(tt->text, ","))
		{
		    error(ERR_NONFATAL, "`%s': more than one comma on line",
			    directives[i]);
		    free_tlist(tline);
		    return -1;
		}
		if (t->type == TOK_WHITESPACE)
		{
		    t = t->next;
		    continue;
		}
		else if (tt->type == TOK_WHITESPACE)
		{
		    tt = tt->next;
		    continue;
		}
		else if (tt->type != t->type ||
			mstrcmp(tt->text, t->text, casesense))
		{
		    j = FALSE;	/* found mismatching tokens */
		    break;
		}
		else
		{
		    t = t->next;
		    tt = tt->next;
		    continue;
		}
	    }
	    if ((t->type != TOK_OTHER || strcmp(t->text, ",")) || tt)
		j = FALSE;	/* trailing gunk on one end or other */
	    if (i == PP_IFNIDN || i == PP_ELIFNIDN ||
		    i == PP_IFNIDNI || i == PP_ELIFNIDNI)
		j = !j;
	    free_tlist(tline);
	    return j;

        case PP_IFMACRO:
        case PP_ELIFMACRO:
        case PP_IFNMACRO:
        case PP_ELIFNMACRO:
	{
	    int found = 0;
	    MMacro searching, *mmac;

	    tline = tline->next;
	    skip_white_(tline);
	    tline = expand_id(tline);
	    if (!tok_type_(tline, TOK_ID))
	    {
		error(ERR_NONFATAL,
			"`%s' expects a macro name",
		      directives[i]);
		return -1;
	    }
	    searching.name = nasm_strdup(tline->text);
	    searching.casesense = (i == PP_MACRO);
	    searching.plus = FALSE;
	    searching.nolist = FALSE;
	    searching.in_progress = FALSE;
	    searching.rep_nest = NULL;
	    searching.nparam_min = 0;
	    searching.nparam_max = INT_MAX;
	    tline = expand_smacro(tline->next);
	    skip_white_(tline);
	    if (!tline)
	    {
	    } else if (!tok_type_(tline, TOK_NUMBER))
	    {
		error(ERR_NONFATAL,
		      "`%s' expects a parameter count or nothing",
		      directives[i]);
	    }
	    else
	    {
		searching.nparam_min = searching.nparam_max =
			readnum(tline->text, &j);
		if (j)
		    error(ERR_NONFATAL,
			  "unable to parse parameter count `%s'",
			  tline->text);
	    }
	    if (tline && tok_is_(tline->next, "-"))
	    {
		tline = tline->next->next;
		if (tok_is_(tline, "*"))
		    searching.nparam_max = INT_MAX;
		else if (!tok_type_(tline, TOK_NUMBER))
		    error(ERR_NONFATAL,
			  "`%s' expects a parameter count after `-'",
			  directives[i]);
		else
		{
		    searching.nparam_max = readnum(tline->text, &j);
		    if (j)
			error(ERR_NONFATAL,
				"unable to parse parameter count `%s'",
				tline->text);
		    if (searching.nparam_min > searching.nparam_max)
			error(ERR_NONFATAL,
				"minimum parameter count exceeds maximum");
		}
	    }
	    if (tline && tok_is_(tline->next, "+"))
	    {
		tline = tline->next;
		searching.plus = TRUE;
	    }
	    mmac = mmacros[hash(searching.name)];
	    while (mmac)
	    {
		if (!strcmp(mmac->name, searching.name) &&
			(mmac->nparam_min <= searching.nparam_max
				|| searching.plus)
			&& (searching.nparam_min <= mmac->nparam_max
				|| mmac->plus))
		{
		    found = TRUE;
		    break;
		}
		mmac = mmac->next;
	    }
	    nasm_free(searching.name);
	    free_tlist(origline);
	    if (i == PP_IFNMACRO || i == PP_ELIFNMACRO)
		found = !found;
	    return found;
	}

	case PP_IFID:
	case PP_ELIFID:
	case PP_IFNID:
	case PP_ELIFNID:
	case PP_IFNUM:
	case PP_ELIFNUM:
	case PP_IFNNUM:
	case PP_ELIFNNUM:
	case PP_IFSTR:
	case PP_ELIFSTR:
	case PP_IFNSTR:
	case PP_ELIFNSTR:
	    tline = expand_smacro(tline);
	    t = tline;
	    while (tok_type_(t, TOK_WHITESPACE))
		t = t->next;
	    j = FALSE;		/* placate optimiser */
	    if (t)
		switch (i)
		{
		    case PP_IFID:
		    case PP_ELIFID:
		    case PP_IFNID:
		    case PP_ELIFNID:
			j = (t->type == TOK_ID);
			break;
		    case PP_IFNUM:
		    case PP_ELIFNUM:
		    case PP_IFNNUM:
		    case PP_ELIFNNUM:
			j = (t->type == TOK_NUMBER);
			break;
		    case PP_IFSTR:
		    case PP_ELIFSTR:
		    case PP_IFNSTR:
		    case PP_ELIFNSTR:
			j = (t->type == TOK_STRING);
			break;
		}
	    if (i == PP_IFNID || i == PP_ELIFNID ||
		    i == PP_IFNNUM || i == PP_ELIFNNUM ||
		    i == PP_IFNSTR || i == PP_ELIFNSTR)
		j = !j;
	    free_tlist(tline);
	    return j;

	case PP_IF:
	case PP_ELIF:
	    t = tline = expand_smacro(tline);
	    tptr = &t;
	    tokval.t_type = TOKEN_INVALID;
	    evalresult = evaluate(ppscan, tptr, &tokval,
		    NULL, pass | CRITICAL, error, NULL);
	    free_tlist(tline);
	    if (!evalresult)
		return -1;
	    if (tokval.t_type)
		error(ERR_WARNING,
			"trailing garbage after expression ignored");
	    if (!is_simple(evalresult))
	    {
		error(ERR_NONFATAL,
			"non-constant value given to `%s'", directives[i]);
		return -1;
	    }
	    return reloc_value(evalresult) != 0;

	default:
	    error(ERR_FATAL,
		    "preprocessor directive `%s' not yet implemented",
		    directives[i]);
	    free_tlist(origline);
	    return -1;		/* yeah, right */
    }
}

/*
 * Expand macros in a string. Used in %error and %include directives.
 * First tokenise the string, apply "expand_smacro" and then de-tokenise back.
 * The returned variable should ALWAYS be freed after usage.
 */
void
expand_macros_in_string(char **p)
{
    Token *line = tokenise(*p);
    line = expand_smacro(line);
    *p = detoken(line, FALSE);
}

/**
 * find and process preprocessor directive in passed line
 * Find out if a line contains a preprocessor directive, and deal
 * with it if so.
 * 
 * If a directive _is_ found, it is the responsibility of this routine
 * (and not the caller) to free_tlist() the line.
 *
 * @param tline a pointer to the current tokeninzed line linked list
 * @return DIRECTIVE_FOUND or NO_DIRECTIVE_FOUND
 * 
 */
static int
do_directive(Token * tline)
{
    int i, j, k, m, nparam, nolist;
    int offset;
    char *p, *mname;
    Include *inc;
    Context *ctx;
    Cond *cond;
    SMacro *smac, **smhead;
    MMacro *mmac;
    Token *t, *tt, *param_start, *macro_start, *last, **tptr, *origline;
    Line *l;
    struct tokenval tokval;
    expr *evalresult;
    MMacro *tmp_defining;	/* Used when manipulating rep_nest */

    origline = tline;

    skip_white_(tline);
    if (!tok_type_(tline, TOK_PREPROC_ID) ||
	    (tline->text[1] == '%' || tline->text[1] == '$'
		    || tline->text[1] == '!'))
	return NO_DIRECTIVE_FOUND;

    i = -1;
    j = elements(directives);
    while (j - i > 1)
    {
	k = (j + i) / 2;
	m = nasm_stricmp(tline->text, directives[k]);
	if (m == 0) {
		if (tasm_compatible_mode) {
	    	i = k;
	    	j = -2;
		} else if (k != PP_ARG && k != PP_LOCAL && k != PP_STACKSIZE) {
		    i = k;
	    	j = -2;
		}
	    break;
	}
	else if (m < 0) {
	    j = k;
	}
	else
	    i = k;
    }

    /*
     * If we're in a non-emitting branch of a condition construct,
     * or walking to the end of an already terminated %rep block,
     * we should ignore all directives except for condition
     * directives.
     */
    if (((istk->conds && !emitting(istk->conds->state)) ||
	 (istk->mstk && !istk->mstk->in_progress)) &&
	!is_condition(i))
    {
	return NO_DIRECTIVE_FOUND;
    }

    /*
     * If we're defining a macro or reading a %rep block, we should
     * ignore all directives except for %macro/%imacro (which
     * generate an error), %endm/%endmacro, and (only if we're in a
     * %rep block) %endrep. If we're in a %rep block, another %rep
     * causes an error, so should be let through.
     */
    if (defining && i != PP_MACRO && i != PP_IMACRO &&
	    i != PP_ENDMACRO && i != PP_ENDM &&
	    (defining->name || (i != PP_ENDREP && i != PP_REP)))
    {
	return NO_DIRECTIVE_FOUND;
    }

    if (j != -2)
    {
	error(ERR_NONFATAL, "unknown preprocessor directive `%s'",
		tline->text);
	return NO_DIRECTIVE_FOUND;		/* didn't get it */
    }

    switch (i)
    {
	case PP_STACKSIZE:
	    /* Directive to tell NASM what the default stack size is. The
	     * default is for a 16-bit stack, and this can be overriden with
	     * %stacksize large.
	     * the following form:
	     *
	     *      ARG arg1:WORD, arg2:DWORD, arg4:QWORD
	     */
	    tline = tline->next;
	    if (tline && tline->type == TOK_WHITESPACE)
		tline = tline->next;
	    if (!tline || tline->type != TOK_ID)
	    {
		error(ERR_NONFATAL, "`%%stacksize' missing size parameter");
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }
	    if (nasm_stricmp(tline->text, "flat") == 0)
	    {
		/* All subsequent ARG directives are for a 32-bit stack */
		StackSize = 4;
		StackPointer = "ebp";
		ArgOffset = 8;
		LocalOffset = 4;
	    }
	    else if (nasm_stricmp(tline->text, "large") == 0)
	    {
		/* All subsequent ARG directives are for a 16-bit stack,
		 * far function call.
		 */
		StackSize = 2;
		StackPointer = "bp";
		ArgOffset = 4;
		LocalOffset = 2;
	    }
	    else if (nasm_stricmp(tline->text, "small") == 0)
	    {
		/* All subsequent ARG directives are for a 16-bit stack,
		   * far function call. We don't support near functions.
		 */
		StackSize = 2;
		StackPointer = "bp";
		ArgOffset = 6;
		LocalOffset = 2;
	    }
	    else
	    {
		error(ERR_NONFATAL, "`%%stacksize' invalid size type");
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_ARG:
	    /* TASM like ARG directive to define arguments to functions, in
	     * the following form:
	     *
	     *      ARG arg1:WORD, arg2:DWORD, arg4:QWORD
	     */
	    offset = ArgOffset;
	    do
	    {
		char *arg, directive[256];
		int size = StackSize;

		/* Find the argument name */
		tline = tline->next;
		if (tline && tline->type == TOK_WHITESPACE)
		    tline = tline->next;
		if (!tline || tline->type != TOK_ID)
		{
		    error(ERR_NONFATAL, "`%%arg' missing argument parameter");
		    free_tlist(origline);
		    return DIRECTIVE_FOUND;
		}
		arg = tline->text;

		/* Find the argument size type */
		tline = tline->next;
		if (!tline || tline->type != TOK_OTHER
			|| tline->text[0] != ':')
		{
		    error(ERR_NONFATAL,
			    "Syntax error processing `%%arg' directive");
		    free_tlist(origline);
		    return DIRECTIVE_FOUND;
		}
		tline = tline->next;
		if (!tline || tline->type != TOK_ID)
		{
		    error(ERR_NONFATAL,
			    "`%%arg' missing size type parameter");
		    free_tlist(origline);
		    return DIRECTIVE_FOUND;
		}

		/* Allow macro expansion of type parameter */
		tt = tokenise(tline->text);
		tt = expand_smacro(tt);
		if (nasm_stricmp(tt->text, "byte") == 0)
		{
		    size = MAX(StackSize, 1);
		}
		else if (nasm_stricmp(tt->text, "word") == 0)
		{
		    size = MAX(StackSize, 2);
		}
		else if (nasm_stricmp(tt->text, "dword") == 0)
		{
		    size = MAX(StackSize, 4);
		}
		else if (nasm_stricmp(tt->text, "qword") == 0)
		{
		    size = MAX(StackSize, 8);
		}
		else if (nasm_stricmp(tt->text, "tword") == 0)
		{
		    size = MAX(StackSize, 10);
		}
		else
		{
		    error(ERR_NONFATAL,
			    "Invalid size type for `%%arg' missing directive");
		    free_tlist(tt);
		    free_tlist(origline);
		    return DIRECTIVE_FOUND;
		}
		free_tlist(tt);

		/* Now define the macro for the argument */
		sprintf(directive, "%%define %s (%s+%d)", arg, StackPointer,
			offset);
		do_directive(tokenise(directive));
		offset += size;

		/* Move to the next argument in the list */
		tline = tline->next;
		if (tline && tline->type == TOK_WHITESPACE)
		    tline = tline->next;
	    }
	    while (tline && tline->type == TOK_OTHER
		    && tline->text[0] == ',');
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_LOCAL:
	    /* TASM like LOCAL directive to define local variables for a
	     * function, in the following form:
	     *
	     *      LOCAL local1:WORD, local2:DWORD, local4:QWORD = LocalSize
	     *
	     * The '= LocalSize' at the end is ignored by NASM, but is
	     * required by TASM to define the local parameter size (and used
	     * by the TASM macro package).
	     */
	    offset = LocalOffset;
	    do
	    {
		char *local, directive[256];
		int size = StackSize;

		/* Find the argument name */
		tline = tline->next;
		if (tline && tline->type == TOK_WHITESPACE)
		    tline = tline->next;
		if (!tline || tline->type != TOK_ID)
		{
		    error(ERR_NONFATAL,
			    "`%%local' missing argument parameter");
		    free_tlist(origline);
		    return DIRECTIVE_FOUND;
		}
		local = tline->text;

		/* Find the argument size type */
		tline = tline->next;
		if (!tline || tline->type != TOK_OTHER
			|| tline->text[0] != ':')
		{
		    error(ERR_NONFATAL,
			    "Syntax error processing `%%local' directive");
		    free_tlist(origline);
		    return DIRECTIVE_FOUND;
		}
		tline = tline->next;
		if (!tline || tline->type != TOK_ID)
		{
		    error(ERR_NONFATAL,
			    "`%%local' missing size type parameter");
		    free_tlist(origline);
		    return DIRECTIVE_FOUND;
		}

		/* Allow macro expansion of type parameter */
		tt = tokenise(tline->text);
		tt = expand_smacro(tt);
		if (nasm_stricmp(tt->text, "byte") == 0)
		{
		    size = MAX(StackSize, 1);
		}
		else if (nasm_stricmp(tt->text, "word") == 0)
		{
		    size = MAX(StackSize, 2);
		}
		else if (nasm_stricmp(tt->text, "dword") == 0)
		{
		    size = MAX(StackSize, 4);
		}
		else if (nasm_stricmp(tt->text, "qword") == 0)
		{
		    size = MAX(StackSize, 8);
		}
		else if (nasm_stricmp(tt->text, "tword") == 0)
		{
		    size = MAX(StackSize, 10);
		}
		else
		{
		    error(ERR_NONFATAL,
			    "Invalid size type for `%%local' missing directive");
		    free_tlist(tt);
		    free_tlist(origline);
		    return DIRECTIVE_FOUND;
		}
		free_tlist(tt);

		/* Now define the macro for the argument */
		sprintf(directive, "%%define %s (%s-%d)", local, StackPointer,
			offset);
		do_directive(tokenise(directive));
		offset += size;

		/* Now define the assign to setup the enter_c macro correctly */
		sprintf(directive, "%%assign %%$localsize %%$localsize+%d",
			size);
		do_directive(tokenise(directive));

		/* Move to the next argument in the list */
		tline = tline->next;
		if (tline && tline->type == TOK_WHITESPACE)
		    tline = tline->next;
	    }
	    while (tline && tline->type == TOK_OTHER
		    && tline->text[0] == ',');
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_CLEAR:
	    if (tline->next)
		error(ERR_WARNING,
			"trailing garbage after `%%clear' ignored");
	    for (j = 0; j < NHASH; j++)
	    {
		while (mmacros[j])
		{
		    MMacro *m = mmacros[j];
		    mmacros[j] = m->next;
		    free_mmacro(m);
		}
		while (smacros[j])
		{
		    SMacro *s = smacros[j];
		    smacros[j] = smacros[j]->next;
		    nasm_free(s->name);
		    free_tlist(s->expansion);
		    nasm_free(s);
		}
	    }
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_INCLUDE:
	    tline = tline->next;
	    skip_white_(tline);
	    if (!tline || (tline->type != TOK_STRING &&
			    tline->type != TOK_INTERNAL_STRING))
	    {
		error(ERR_NONFATAL, "`%%include' expects a file name");
		free_tlist(origline);
		return DIRECTIVE_FOUND;	/* but we did _something_ */
	    }
	    if (tline->next)
		error(ERR_WARNING,
			"trailing garbage after `%%include' ignored");
	    if (tline->type != TOK_INTERNAL_STRING)
	    {
		p = tline->text + 1;	/* point past the quote to the name */
		p[strlen(p) - 1] = '\0';	/* remove the trailing quote */
	    }
	    else
		p = tline->text;	/* internal_string is easier */
	    expand_macros_in_string(&p);
	    inc = nasm_malloc(sizeof(Include));
	    inc->next = istk;
	    inc->conds = NULL;
	    inc->fp = inc_fopen(p);
	    inc->fname = src_set_fname(p);
	    inc->lineno = src_set_linnum(0);
	    inc->lineinc = 1;
	    inc->expansion = NULL;
	    inc->mstk = NULL;
	    istk = inc;
	    list->uplevel(LIST_INCLUDE);
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_PUSH:
	    tline = tline->next;
	    skip_white_(tline);
	    tline = expand_id(tline);
	    if (!tok_type_(tline, TOK_ID))
	    {
		error(ERR_NONFATAL, "`%%push' expects a context identifier");
		free_tlist(origline);
		return DIRECTIVE_FOUND;	/* but we did _something_ */
	    }
	    if (tline->next)
		error(ERR_WARNING, "trailing garbage after `%%push' ignored");
	    ctx = nasm_malloc(sizeof(Context));
	    ctx->next = cstk;
	    ctx->localmac = NULL;
	    ctx->name = nasm_strdup(tline->text);
	    ctx->number = unique++;
	    cstk = ctx;
	    free_tlist(origline);
	    break;

	case PP_REPL:
	    tline = tline->next;
	    skip_white_(tline);
	    tline = expand_id(tline);
	    if (!tok_type_(tline, TOK_ID))
	    {
		error(ERR_NONFATAL, "`%%repl' expects a context identifier");
		free_tlist(origline);
		return DIRECTIVE_FOUND;	/* but we did _something_ */
	    }
	    if (tline->next)
		error(ERR_WARNING, "trailing garbage after `%%repl' ignored");
	    if (!cstk)
		error(ERR_NONFATAL, "`%%repl': context stack is empty");
	    else
	    {
		nasm_free(cstk->name);
		cstk->name = nasm_strdup(tline->text);
	    }
	    free_tlist(origline);
	    break;

	case PP_POP:
	    if (tline->next)
		error(ERR_WARNING, "trailing garbage after `%%pop' ignored");
	    if (!cstk)
		error(ERR_NONFATAL,
			"`%%pop': context stack is already empty");
	    else
		ctx_pop();
	    free_tlist(origline);
	    break;

	case PP_ERROR:
	    tline->next = expand_smacro(tline->next);
	    tline = tline->next;
	    skip_white_(tline);
	    if (tok_type_(tline, TOK_STRING))
	    {
		p = tline->text + 1;	/* point past the quote to the name */
		p[strlen(p) - 1] = '\0';	/* remove the trailing quote */
		expand_macros_in_string(&p);
		error(ERR_NONFATAL, "%s", p);
		nasm_free(p);
	    }
	    else
	    {
		p = detoken(tline, FALSE);
		error(ERR_WARNING, "%s", p);
		nasm_free(p);
	    }
	    free_tlist(origline);
	    break;

	case PP_IF:
	case PP_IFCTX:
	case PP_IFDEF:
	case PP_IFID:
	case PP_IFIDN:
	case PP_IFIDNI:
        case PP_IFMACRO:
	case PP_IFNCTX:
	case PP_IFNDEF:
	case PP_IFNID:
	case PP_IFNIDN:
	case PP_IFNIDNI:
        case PP_IFNMACRO:
	case PP_IFNNUM:
	case PP_IFNSTR:
	case PP_IFNUM:
	case PP_IFSTR:
	    if (istk->conds && !emitting(istk->conds->state))
		j = COND_NEVER;
	    else
	    {
		j = if_condition(tline->next, i);
		tline->next = NULL;	/* it got freed */
		free_tlist(origline);
		j = j < 0 ? COND_NEVER : j ? COND_IF_TRUE : COND_IF_FALSE;
	    }
	    cond = nasm_malloc(sizeof(Cond));
	    cond->next = istk->conds;
	    cond->state = j;
	    istk->conds = cond;
	    return DIRECTIVE_FOUND;

	case PP_ELIF:
	case PP_ELIFCTX:
	case PP_ELIFDEF:
	case PP_ELIFID:
	case PP_ELIFIDN:
	case PP_ELIFIDNI:
        case PP_ELIFMACRO:
	case PP_ELIFNCTX:
	case PP_ELIFNDEF:
	case PP_ELIFNID:
	case PP_ELIFNIDN:
	case PP_ELIFNIDNI:
        case PP_ELIFNMACRO:
	case PP_ELIFNNUM:
	case PP_ELIFNSTR:
	case PP_ELIFNUM:
	case PP_ELIFSTR:
	    if (!istk->conds)
		error(ERR_FATAL, "`%s': no matching `%%if'", directives[i]);
	    if (emitting(istk->conds->state)
		    || istk->conds->state == COND_NEVER)
		istk->conds->state = COND_NEVER;
	    else
	    {
		/*
		 * IMPORTANT: In the case of %if, we will already have
		 * called expand_mmac_params(); however, if we're
		 * processing an %elif we must have been in a
		 * non-emitting mode, which would have inhibited
		 * the normal invocation of expand_mmac_params().  Therefore,
		 * we have to do it explicitly here.
		 */
		 j = if_condition(expand_mmac_params(tline->next), i);
		 tline->next = NULL; /* it got freed */
		free_tlist(origline);
		istk->conds->state =
			j < 0 ? COND_NEVER : j ? COND_IF_TRUE : COND_IF_FALSE;
	    }
	    return DIRECTIVE_FOUND;

	case PP_ELSE:
	    if (tline->next)
		error(ERR_WARNING, "trailing garbage after `%%else' ignored");
	    if (!istk->conds)
		error(ERR_FATAL, "`%%else': no matching `%%if'");
	    if (emitting(istk->conds->state)
		    || istk->conds->state == COND_NEVER)
		istk->conds->state = COND_ELSE_FALSE;
	    else
		istk->conds->state = COND_ELSE_TRUE;
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_ENDIF:
	    if (tline->next)
		error(ERR_WARNING,
			"trailing garbage after `%%endif' ignored");
	    if (!istk->conds)
		error(ERR_FATAL, "`%%endif': no matching `%%if'");
	    cond = istk->conds;
	    istk->conds = cond->next;
	    nasm_free(cond);
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_MACRO:
	case PP_IMACRO:
	    if (defining)
		error(ERR_FATAL,
			"`%%%smacro': already defining a macro",
			(i == PP_IMACRO ? "i" : ""));
	    tline = tline->next;
	    skip_white_(tline);
	    tline = expand_id(tline);
	    if (!tok_type_(tline, TOK_ID))
	    {
		error(ERR_NONFATAL,
			"`%%%smacro' expects a macro name",
			(i == PP_IMACRO ? "i" : ""));
		return DIRECTIVE_FOUND;
	    }
	    defining = nasm_malloc(sizeof(MMacro));
	    defining->name = nasm_strdup(tline->text);
	    defining->casesense = (i == PP_MACRO);
	    defining->plus = FALSE;
	    defining->nolist = FALSE;
	    defining->in_progress = FALSE;
	    defining->rep_nest = NULL;
	    tline = expand_smacro(tline->next);
	    skip_white_(tline);
	    if (!tok_type_(tline, TOK_NUMBER))
	    {
		error(ERR_NONFATAL,
			"`%%%smacro' expects a parameter count",
			(i == PP_IMACRO ? "i" : ""));
		defining->nparam_min = defining->nparam_max = 0;
	    }
	    else
	    {
		defining->nparam_min = defining->nparam_max =
			readnum(tline->text, &j);
		if (j)
		    error(ERR_NONFATAL,
			    "unable to parse parameter count `%s'",
			    tline->text);
	    }
	    if (tline && tok_is_(tline->next, "-"))
	    {
		tline = tline->next->next;
		if (tok_is_(tline, "*"))
		    defining->nparam_max = INT_MAX;
		else if (!tok_type_(tline, TOK_NUMBER))
		    error(ERR_NONFATAL,
			    "`%%%smacro' expects a parameter count after `-'",
			    (i == PP_IMACRO ? "i" : ""));
		else
		{
		    defining->nparam_max = readnum(tline->text, &j);
		    if (j)
			error(ERR_NONFATAL,
				"unable to parse parameter count `%s'",
				tline->text);
		    if (defining->nparam_min > defining->nparam_max)
			error(ERR_NONFATAL,
				"minimum parameter count exceeds maximum");
		}
	    }
	    if (tline && tok_is_(tline->next, "+"))
	    {
		tline = tline->next;
		defining->plus = TRUE;
	    }
	    if (tline && tok_type_(tline->next, TOK_ID) &&
		    !nasm_stricmp(tline->next->text, ".nolist"))
	    {
		tline = tline->next;
		defining->nolist = TRUE;
	    }
	    mmac = mmacros[hash(defining->name)];
	    while (mmac)
	    {
		if (!strcmp(mmac->name, defining->name) &&
			(mmac->nparam_min <= defining->nparam_max
				|| defining->plus)
			&& (defining->nparam_min <= mmac->nparam_max
				|| mmac->plus))
		{
		    error(ERR_WARNING,
			    "redefining multi-line macro `%s'",
			    defining->name);
		    break;
		}
		mmac = mmac->next;
	    }
	    /*
	     * Handle default parameters.
	     */
	    if (tline && tline->next)
	    {
		defining->dlist = tline->next;
		tline->next = NULL;
		count_mmac_params(defining->dlist, &defining->ndefs,
			&defining->defaults);
	    }
	    else
	    {
		defining->dlist = NULL;
		defining->defaults = NULL;
	    }
	    defining->expansion = NULL;
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_ENDM:
	case PP_ENDMACRO:
	    if (!defining)
	    {
		error(ERR_NONFATAL, "`%s': not defining a macro",
			tline->text);
		return DIRECTIVE_FOUND;
	    }
	    k = hash(defining->name);
	    defining->next = mmacros[k];
	    mmacros[k] = defining;
	    defining = NULL;
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_ROTATE:
	    if (tline->next && tline->next->type == TOK_WHITESPACE)
		tline = tline->next;
	    if (tline->next == NULL)
	    {
		free_tlist(origline);
		error(ERR_NONFATAL, "`%%rotate' missing rotate count");
		return DIRECTIVE_FOUND;
	    }
	    t = expand_smacro(tline->next);
	    tline->next = NULL;
	    free_tlist(origline);
	    tline = t;
	    tptr = &t;
	    tokval.t_type = TOKEN_INVALID;
	    evalresult =
		    evaluate(ppscan, tptr, &tokval, NULL, pass, error, NULL);
	    free_tlist(tline);
	    if (!evalresult)
		return DIRECTIVE_FOUND;
	    if (tokval.t_type)
		error(ERR_WARNING,
			"trailing garbage after expression ignored");
	    if (!is_simple(evalresult))
	    {
		error(ERR_NONFATAL, "non-constant value given to `%%rotate'");
		return DIRECTIVE_FOUND;
	    }
	    mmac = istk->mstk;
	    while (mmac && !mmac->name)	/* avoid mistaking %reps for macros */
		mmac = mmac->next_active;
	    if (!mmac)
	    {
		error(ERR_NONFATAL,
			"`%%rotate' invoked outside a macro call");
	    } 
	    else if (mmac->nparam == 0)
	    {
		error(ERR_NONFATAL,
			"`%%rotate' invoked within macro without parameters");
	    }
	    else
	    {
		mmac->rotate = mmac->rotate + reloc_value(evalresult);
		
		if (mmac->rotate < 0)
		    mmac->rotate = 
			mmac->nparam - (-mmac->rotate) % mmac->nparam;
		mmac->rotate %= mmac->nparam;
	    }
	    return DIRECTIVE_FOUND;

	case PP_REP:
	    nolist = FALSE;
	    tline = tline->next;
	    if (tline->next && tline->next->type == TOK_WHITESPACE)
		tline = tline->next;
	    if (tline->next && tline->next->type == TOK_ID &&
		    !nasm_stricmp(tline->next->text, ".nolist"))
	    {
		tline = tline->next;
		nolist = TRUE;
	    }
	    t = expand_smacro(tline->next);
	    tline->next = NULL;
	    free_tlist(origline);
	    tline = t;
	    tptr = &t;
	    tokval.t_type = TOKEN_INVALID;
	    evalresult =
		    evaluate(ppscan, tptr, &tokval, NULL, pass, error, NULL);
	    free_tlist(tline);
	    if (!evalresult)
		return DIRECTIVE_FOUND;
	    if (tokval.t_type)
		error(ERR_WARNING,
			"trailing garbage after expression ignored");
	    if (!is_simple(evalresult))
	    {
		error(ERR_NONFATAL, "non-constant value given to `%%rep'");
		return DIRECTIVE_FOUND;
	    }
	    tmp_defining = defining;
	    defining = nasm_malloc(sizeof(MMacro));
	    defining->name = NULL;	/* flags this macro as a %rep block */
	    defining->casesense = 0;
	    defining->plus = FALSE;
	    defining->nolist = nolist;
	    defining->in_progress = reloc_value(evalresult) + 1;
	    defining->nparam_min = defining->nparam_max = 0;
	    defining->defaults = NULL;
	    defining->dlist = NULL;
	    defining->expansion = NULL;
	    defining->next_active = istk->mstk;
	    defining->rep_nest = tmp_defining;
	    return DIRECTIVE_FOUND;

	case PP_ENDREP:
	    if (!defining || defining->name)
	    {
		error(ERR_NONFATAL, "`%%endrep': no matching `%%rep'");
		return DIRECTIVE_FOUND;
	    }

	    /*
	     * Now we have a "macro" defined - although it has no name
	     * and we won't be entering it in the hash tables - we must
	     * push a macro-end marker for it on to istk->expansion.
	     * After that, it will take care of propagating itself (a
	     * macro-end marker line for a macro which is really a %rep
	     * block will cause the macro to be re-expanded, complete
	     * with another macro-end marker to ensure the process
	     * continues) until the whole expansion is forcibly removed
	     * from istk->expansion by a %exitrep.
	     */
	    l = nasm_malloc(sizeof(Line));
	    l->next = istk->expansion;
	    l->finishes = defining;
	    l->first = NULL;
	    istk->expansion = l;

	    istk->mstk = defining;

	    list->uplevel(defining->nolist ? LIST_MACRO_NOLIST : LIST_MACRO);
	    tmp_defining = defining;
	    defining = defining->rep_nest;
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_EXITREP:
	    /*
	     * We must search along istk->expansion until we hit a
	     * macro-end marker for a macro with no name. Then we set
	     * its `in_progress' flag to 0.
	     */
	    for (l = istk->expansion; l; l = l->next)
		if (l->finishes && !l->finishes->name)
		    break;

	    if (l)
		l->finishes->in_progress = 0;
	    else
		error(ERR_NONFATAL, "`%%exitrep' not within `%%rep' block");
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_XDEFINE:
	case PP_IXDEFINE:
	case PP_DEFINE:
	case PP_IDEFINE:
	    tline = tline->next;
	    skip_white_(tline);
	    tline = expand_id(tline);
	    if (!tline || (tline->type != TOK_ID &&
			    (tline->type != TOK_PREPROC_ID ||
				    tline->text[1] != '$')))
	    {
		error(ERR_NONFATAL,
			"`%%%s%sdefine' expects a macro identifier",
			((i == PP_IDEFINE || i == PP_IXDEFINE) ? "i" : ""),
			((i == PP_XDEFINE || i == PP_IXDEFINE) ? "x" : ""));
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }

	    ctx = get_ctx(tline->text, FALSE);
	    if (!ctx)
		smhead = &smacros[hash(tline->text)];
	    else
		smhead = &ctx->localmac;
	    mname = tline->text;
	    last = tline;
	    param_start = tline = tline->next;
	    nparam = 0;

	    /* Expand the macro definition now for %xdefine and %ixdefine */
	    if ((i == PP_XDEFINE) || (i == PP_IXDEFINE))
		tline = expand_smacro(tline);

	    if (tok_is_(tline, "("))
	    {
		/*
		 * This macro has parameters.
		 */

		tline = tline->next;
		while (1)
		{
		    skip_white_(tline);
		    if (!tline)
		    {
			error(ERR_NONFATAL, "parameter identifier expected");
			free_tlist(origline);
			return DIRECTIVE_FOUND;
		    }
		    if (tline->type != TOK_ID)
		    {
			error(ERR_NONFATAL,
				"`%s': parameter identifier expected",
				tline->text);
			free_tlist(origline);
			return DIRECTIVE_FOUND;
		    }
		    tline->type = TOK_SMAC_PARAM + nparam++;
		    tline = tline->next;
		    skip_white_(tline);
		    if (tok_is_(tline, ","))
		    {
			tline = tline->next;
			continue;
		    }
		    if (!tok_is_(tline, ")"))
		    {
			error(ERR_NONFATAL,
				"`)' expected to terminate macro template");
			free_tlist(origline);
			return DIRECTIVE_FOUND;
		    }
		    break;
		}
		last = tline;
		tline = tline->next;
	    }
	    if (tok_type_(tline, TOK_WHITESPACE))
		last = tline, tline = tline->next;
	    macro_start = NULL;
	    last->next = NULL;
	    t = tline;
	    while (t)
	    {
		if (t->type == TOK_ID)
		{
		    for (tt = param_start; tt; tt = tt->next)
			if (tt->type >= TOK_SMAC_PARAM &&
				!strcmp(tt->text, t->text))
			    t->type = tt->type;
		}
		tt = t->next;
		t->next = macro_start;
		macro_start = t;
		t = tt;
	    }
	    /*
	     * Good. We now have a macro name, a parameter count, and a
	     * token list (in reverse order) for an expansion. We ought
	     * to be OK just to create an SMacro, store it, and let
	     * free_tlist have the rest of the line (which we have
	     * carefully re-terminated after chopping off the expansion
	     * from the end).
	     */
	    if (smacro_defined(ctx, mname, nparam, &smac, i == PP_DEFINE))
	    {
		if (!smac)
		{
		    error(ERR_WARNING,
			    "single-line macro `%s' defined both with and"
			    " without parameters", mname);
		    free_tlist(origline);
		    free_tlist(macro_start);
		    return DIRECTIVE_FOUND;
		}
		else
		{
		    /*
		     * We're redefining, so we have to take over an
		     * existing SMacro structure. This means freeing
		     * what was already in it.
		     */
		    nasm_free(smac->name);
		    free_tlist(smac->expansion);
		}
	    }
	    else
	    {
		smac = nasm_malloc(sizeof(SMacro));
		smac->next = *smhead;
		*smhead = smac;
	    }
	    smac->name = nasm_strdup(mname);
	    smac->casesense = ((i == PP_DEFINE) || (i == PP_XDEFINE));
	    smac->nparam = nparam;
	    smac->expansion = macro_start;
	    smac->in_progress = FALSE;
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_UNDEF:
	    tline = tline->next;
	    skip_white_(tline);
	    tline = expand_id(tline);
	    if (!tline || (tline->type != TOK_ID &&
			    (tline->type != TOK_PREPROC_ID ||
				    tline->text[1] != '$')))
	    {
		error(ERR_NONFATAL, "`%%undef' expects a macro identifier");
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }
	    if (tline->next)
	    {
		error(ERR_WARNING,
			"trailing garbage after macro name ignored");
	    }

	    /* Find the context that symbol belongs to */
	    ctx = get_ctx(tline->text, FALSE);
	    if (!ctx)
		smhead = &smacros[hash(tline->text)];
	    else
		smhead = &ctx->localmac;

	    mname = tline->text;
	    last = tline;
	    last->next = NULL;

	    /*
	     * We now have a macro name... go hunt for it.
	     */
	    while (smacro_defined(ctx, mname, -1, &smac, 1))
	    {
		/* Defined, so we need to find its predecessor and nuke it */
		SMacro **s;
		for (s = smhead; *s && *s != smac; s = &(*s)->next);
		if (*s)
		{
		    *s = smac->next;
		    nasm_free(smac->name);
		    free_tlist(smac->expansion);
		    nasm_free(smac);
		}
	    }
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_STRLEN:
	    tline = tline->next;
	    skip_white_(tline);
	    tline = expand_id(tline);
	    if (!tline || (tline->type != TOK_ID &&
			    (tline->type != TOK_PREPROC_ID ||
				    tline->text[1] != '$')))
	    {
		error(ERR_NONFATAL,
			"`%%strlen' expects a macro identifier as first parameter");
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }
	    ctx = get_ctx(tline->text, FALSE);
	    if (!ctx)
		smhead = &smacros[hash(tline->text)];
	    else
		smhead = &ctx->localmac;
	    mname = tline->text;
	    last = tline;
	    tline = expand_smacro(tline->next);
	    last->next = NULL;

	    t = tline;
	    while (tok_type_(t, TOK_WHITESPACE))
		t = t->next;
	    /* t should now point to the string */
	    if (t->type != TOK_STRING)
	    {
		error(ERR_NONFATAL,
			"`%%strlen` requires string as second parameter");
		free_tlist(tline);
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }

	    macro_start = nasm_malloc(sizeof(*macro_start));
	    macro_start->next = NULL;
	    make_tok_num(macro_start, strlen(t->text) - 2);
	    macro_start->mac = NULL;

	    /*
	     * We now have a macro name, an implicit parameter count of
	     * zero, and a numeric token to use as an expansion. Create
	     * and store an SMacro.
	     */
	    if (smacro_defined(ctx, mname, 0, &smac, i == PP_STRLEN))
	    {
		if (!smac)
		    error(ERR_WARNING,
			    "single-line macro `%s' defined both with and"
			    " without parameters", mname);
		else
		{
		    /*
		     * We're redefining, so we have to take over an
		     * existing SMacro structure. This means freeing
		     * what was already in it.
		     */
		    nasm_free(smac->name);
		    free_tlist(smac->expansion);
		}
	    }
	    else
	    {
		smac = nasm_malloc(sizeof(SMacro));
		smac->next = *smhead;
		*smhead = smac;
	    }
	    smac->name = nasm_strdup(mname);
	    smac->casesense = (i == PP_STRLEN);
	    smac->nparam = 0;
	    smac->expansion = macro_start;
	    smac->in_progress = FALSE;
	    free_tlist(tline);
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_SUBSTR:
	    tline = tline->next;
	    skip_white_(tline);
	    tline = expand_id(tline);
	    if (!tline || (tline->type != TOK_ID &&
			    (tline->type != TOK_PREPROC_ID ||
				    tline->text[1] != '$')))
	    {
		error(ERR_NONFATAL,
			"`%%substr' expects a macro identifier as first parameter");
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }
	    ctx = get_ctx(tline->text, FALSE);
	    if (!ctx)
		smhead = &smacros[hash(tline->text)];
	    else
		smhead = &ctx->localmac;
	    mname = tline->text;
	    last = tline;
	    tline = expand_smacro(tline->next);
	    last->next = NULL;

	    t = tline->next;
	    while (tok_type_(t, TOK_WHITESPACE))
		t = t->next;

	    /* t should now point to the string */
	    if (t->type != TOK_STRING)
	    {
		error(ERR_NONFATAL,
			"`%%substr` requires string as second parameter");
		free_tlist(tline);
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }

	    tt = t->next;
	    tptr = &tt;
	    tokval.t_type = TOKEN_INVALID;
	    evalresult =
		    evaluate(ppscan, tptr, &tokval, NULL, pass, error, NULL);
	    if (!evalresult)
	    {
		free_tlist(tline);
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }
	    if (!is_simple(evalresult))
	    {
		error(ERR_NONFATAL, "non-constant value given to `%%substr`");
		free_tlist(tline);
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }

	    macro_start = nasm_malloc(sizeof(*macro_start));
	    macro_start->next = NULL;
	    macro_start->text = nasm_strdup("'''");
	    if (evalresult->value > 0
		    && evalresult->value < strlen(t->text) - 1)
	    {
		macro_start->text[1] = t->text[evalresult->value];
	    }
	    else
	    {
		macro_start->text[2] = '\0';
	    }
	    macro_start->type = TOK_STRING;
	    macro_start->mac = NULL;

	    /*
	     * We now have a macro name, an implicit parameter count of
	     * zero, and a numeric token to use as an expansion. Create
	     * and store an SMacro.
	     */
	    if (smacro_defined(ctx, mname, 0, &smac, i == PP_SUBSTR))
	    {
		if (!smac)
		    error(ERR_WARNING,
			    "single-line macro `%s' defined both with and"
			    " without parameters", mname);
		else
		{
		    /*
		     * We're redefining, so we have to take over an
		     * existing SMacro structure. This means freeing
		     * what was already in it.
		     */
		    nasm_free(smac->name);
		    free_tlist(smac->expansion);
		}
	    }
	    else
	    {
		smac = nasm_malloc(sizeof(SMacro));
		smac->next = *smhead;
		*smhead = smac;
	    }
	    smac->name = nasm_strdup(mname);
	    smac->casesense = (i == PP_SUBSTR);
	    smac->nparam = 0;
	    smac->expansion = macro_start;
	    smac->in_progress = FALSE;
	    free_tlist(tline);
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;


	case PP_ASSIGN:
	case PP_IASSIGN:
	    tline = tline->next;
	    skip_white_(tline);
	    tline = expand_id(tline);
	    if (!tline || (tline->type != TOK_ID &&
			    (tline->type != TOK_PREPROC_ID ||
				    tline->text[1] != '$')))
	    {
		error(ERR_NONFATAL,
			"`%%%sassign' expects a macro identifier",
			(i == PP_IASSIGN ? "i" : ""));
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }
	    ctx = get_ctx(tline->text, FALSE);
	    if (!ctx)
		smhead = &smacros[hash(tline->text)];
	    else
		smhead = &ctx->localmac;
	    mname = tline->text;
	    last = tline;
	    tline = expand_smacro(tline->next);
	    last->next = NULL;

	    t = tline;
	    tptr = &t;
	    tokval.t_type = TOKEN_INVALID;
	    evalresult =
		    evaluate(ppscan, tptr, &tokval, NULL, pass, error, NULL);
	    free_tlist(tline);
	    if (!evalresult)
	    {
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }

	    if (tokval.t_type)
		error(ERR_WARNING,
			"trailing garbage after expression ignored");

	    if (!is_simple(evalresult))
	    {
		error(ERR_NONFATAL,
			"non-constant value given to `%%%sassign'",
			(i == PP_IASSIGN ? "i" : ""));
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }

	    macro_start = nasm_malloc(sizeof(*macro_start));
	    macro_start->next = NULL;
	    make_tok_num(macro_start, reloc_value(evalresult));
	    macro_start->mac = NULL;

	    /*
	     * We now have a macro name, an implicit parameter count of
	     * zero, and a numeric token to use as an expansion. Create
	     * and store an SMacro.
	     */
	    if (smacro_defined(ctx, mname, 0, &smac, i == PP_ASSIGN))
	    {
		if (!smac)
		    error(ERR_WARNING,
			    "single-line macro `%s' defined both with and"
			    " without parameters", mname);
		else
		{
		    /*
		     * We're redefining, so we have to take over an
		     * existing SMacro structure. This means freeing
		     * what was already in it.
		     */
		    nasm_free(smac->name);
		    free_tlist(smac->expansion);
		}
	    }
	    else
	    {
		smac = nasm_malloc(sizeof(SMacro));
		smac->next = *smhead;
		*smhead = smac;
	    }
	    smac->name = nasm_strdup(mname);
	    smac->casesense = (i == PP_ASSIGN);
	    smac->nparam = 0;
	    smac->expansion = macro_start;
	    smac->in_progress = FALSE;
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	case PP_LINE:
	    /*
	     * Syntax is `%line nnn[+mmm] [filename]'
	     */
	    tline = tline->next;
	    skip_white_(tline);
	    if (!tok_type_(tline, TOK_NUMBER))
	    {
		error(ERR_NONFATAL, "`%%line' expects line number");
		free_tlist(origline);
		return DIRECTIVE_FOUND;
	    }
	    k = readnum(tline->text, &j);
	    m = 1;
	    tline = tline->next;
	    if (tok_is_(tline, "+"))
	    {
		tline = tline->next;
		if (!tok_type_(tline, TOK_NUMBER))
		{
		    error(ERR_NONFATAL, "`%%line' expects line increment");
		    free_tlist(origline);
		    return DIRECTIVE_FOUND;
		}
		m = readnum(tline->text, &j);
		tline = tline->next;
	    }
	    skip_white_(tline);
	    src_set_linnum(k);
	    istk->lineinc = m;
	    if (tline)
	    {
		nasm_free(src_set_fname(detoken(tline, FALSE)));
	    }
	    free_tlist(origline);
	    return DIRECTIVE_FOUND;

	default:
	    error(ERR_FATAL,
		    "preprocessor directive `%s' not yet implemented",
		    directives[i]);
	    break;
    }
    return DIRECTIVE_FOUND;
}

/*
 * Ensure that a macro parameter contains a condition code and
 * nothing else. Return the condition code index if so, or -1
 * otherwise.
 */
static int
find_cc(Token * t)
{
    Token *tt;
    int i, j, k, m;

    skip_white_(t);
    if (t->type != TOK_ID)
	return -1;
    tt = t->next;
    skip_white_(tt);
    if (tt && (tt->type != TOK_OTHER || strcmp(tt->text, ",")))
	return -1;

    i = -1;
    j = elements(conditions);
    while (j - i > 1)
    {
	k = (j + i) / 2;
	m = nasm_stricmp(t->text, conditions[k]);
	if (m == 0)
	{
	    i = k;
	    j = -2;
	    break;
	}
	else if (m < 0)
	{
	    j = k;
	}
	else
	    i = k;
    }
    if (j != -2)
	return -1;
    return i;
}

/*
 * Expand MMacro-local things: parameter references (%0, %n, %+n,
 * %-n) and MMacro-local identifiers (%%foo).
 */
static Token *
expand_mmac_params(Token * tline)
{
    Token *t, *tt, **tail, *thead;

    tail = &thead;
    thead = NULL;

    while (tline)
    {
	if (tline->type == TOK_PREPROC_ID &&
		(((tline->text[1] == '+' || tline->text[1] == '-')
				&& tline->text[2]) || tline->text[1] == '%'
			|| (tline->text[1] >= '0' && tline->text[1] <= '9')))
	{
	    char *text = NULL;
	    int type = 0, cc;	/* type = 0 to placate optimisers */
	    char tmpbuf[30];
	    int n, i;
	    MMacro *mac;

	    t = tline;
	    tline = tline->next;

	    mac = istk->mstk;
	    while (mac && !mac->name)	/* avoid mistaking %reps for macros */
		mac = mac->next_active;
	    if (!mac)
		error(ERR_NONFATAL, "`%s': not in a macro call", t->text);
	    else
		switch (t->text[1])
		{
			/*
			 * We have to make a substitution of one of the
			 * forms %1, %-1, %+1, %%foo, %0.
			 */
		    case '0':
			type = TOK_NUMBER;
			sprintf(tmpbuf, "%d", mac->nparam);
			text = nasm_strdup(tmpbuf);
			break;
		    case '%':
			type = TOK_ID;
			sprintf(tmpbuf, "..@%lu.", mac->unique);
			text = nasm_strcat(tmpbuf, t->text + 2);
			break;
		    case '-':
			n = atoi(t->text + 2) - 1;
			if (n >= mac->nparam)
			    tt = NULL;
			else
			{
			    if (mac->nparam > 1)
				n = (n + mac->rotate) % mac->nparam;
			    tt = mac->params[n];
			}
			cc = find_cc(tt);
			if (cc == -1)
			{
			    error(ERR_NONFATAL,
				    "macro parameter %d is not a condition code",
				    n + 1);
			    text = NULL;
			}
			else
			{
			    type = TOK_ID;
			    if (inverse_ccs[cc] == -1)
			    {
				error(ERR_NONFATAL,
					"condition code `%s' is not invertible",
					conditions[cc]);
				text = NULL;
			    }
			    else
				text =
					nasm_strdup(conditions[inverse_ccs
						 [cc]]);
			}
			break;
		    case '+':
			n = atoi(t->text + 2) - 1;
			if (n >= mac->nparam)
			    tt = NULL;
			else
			{
			    if (mac->nparam > 1)
				n = (n + mac->rotate) % mac->nparam;
			    tt = mac->params[n];
			}
			cc = find_cc(tt);
			if (cc == -1)
			{
			    error(ERR_NONFATAL,
				    "macro parameter %d is not a condition code",
				    n + 1);
			    text = NULL;
			}
			else
			{
			    type = TOK_ID;
			    text = nasm_strdup(conditions[cc]);
			}
			break;
		    default:
			n = atoi(t->text + 1) - 1;
			if (n >= mac->nparam)
			    tt = NULL;
			else
			{
			    if (mac->nparam > 1)
				n = (n + mac->rotate) % mac->nparam;
			    tt = mac->params[n];
			}
			if (tt)
			{
			    for (i = 0; i < mac->paramlen[n]; i++)
			    {
				*tail =
					new_Token(NULL, tt->type, tt->text,
					0);
				tail = &(*tail)->next;
				tt = tt->next;
			    }
			}
			text = NULL;	/* we've done it here */
			break;
		}
	    if (!text)
	    {
		delete_Token(t);
	    }
	    else
	    {
		*tail = t;
		tail = &t->next;
		t->type = type;
		nasm_free(t->text);
		t->text = text;
		t->mac = NULL;
	    }
	    continue;
	}
	else
	{
	    t = *tail = tline;
	    tline = tline->next;
	    t->mac = NULL;
	    tail = &t->next;
	}
    }
    *tail = NULL;
    t = thead;
    for (; t && (tt = t->next) != NULL; t = t->next)
	switch (t->type)
	{
	    case TOK_WHITESPACE:
		if (tt->type == TOK_WHITESPACE)
		{
		    t->next = delete_Token(tt);
		}
		break;
	    case TOK_ID:
		if (tt->type == TOK_ID || tt->type == TOK_NUMBER)
		{
		    char *tmp = nasm_strcat(t->text, tt->text);
		    nasm_free(t->text);
		    t->text = tmp;
		    t->next = delete_Token(tt);
		}
		break;
	    case TOK_NUMBER:
		if (tt->type == TOK_NUMBER)
		{
		    char *tmp = nasm_strcat(t->text, tt->text);
		    nasm_free(t->text);
		    t->text = tmp;
		    t->next = delete_Token(tt);
		}
		break;
	}

    return thead;
}

/*
 * Expand all single-line macro calls made in the given line.
 * Return the expanded version of the line. The original is deemed
 * to be destroyed in the process. (In reality we'll just move
 * Tokens from input to output a lot of the time, rather than
 * actually bothering to destroy and replicate.)
 */
static Token *
expand_smacro(Token * tline)
{
    Token *t, *tt, *mstart, **tail, *thead;
    SMacro *head = NULL, *m;
    Token **params;
    int *paramsize;
    int nparam, sparam, brackets, rescan;
    Token *org_tline = tline;
    Context *ctx;
    char *mname;

    /*
     * Trick: we should avoid changing the start token pointer since it can
     * be contained in "next" field of other token. Because of this
     * we allocate a copy of first token and work with it; at the end of
     * routine we copy it back
     */
    if (org_tline)
    {
	tline =
		new_Token(org_tline->next, org_tline->type, org_tline->text,
		0);
	tline->mac = org_tline->mac;
	nasm_free(org_tline->text);
	org_tline->text = NULL;
    }

  again:
    tail = &thead;
    thead = NULL;

    while (tline)
    {				/* main token loop */
	if ((mname = tline->text))
	{
	    /* if this token is a local macro, look in local context */
	    if (tline->type == TOK_ID || tline->type == TOK_PREPROC_ID)
		ctx = get_ctx(mname, TRUE);
	    else
		ctx = NULL;
	    if (!ctx)
		head = smacros[hash(mname)];
	    else
		head = ctx->localmac;
	    /*
	     * We've hit an identifier. As in is_mmacro below, we first
	     * check whether the identifier is a single-line macro at
	     * all, then think about checking for parameters if
	     * necessary.
	     */
	    for (m = head; m; m = m->next)
		if (!mstrcmp(m->name, mname, m->casesense))
		    break;
	    if (m)
	    {
		mstart = tline;
		params = NULL;
		paramsize = NULL;
		if (m->nparam == 0)
		{
		    /*
		     * Simple case: the macro is parameterless. Discard the
		     * one token that the macro call took, and push the
		     * expansion back on the to-do stack.
		     */
		    if (!m->expansion)
		    {
			if (!strcmp("__FILE__", m->name))
			{
			    long num = 0;
			    src_get(&num, &(tline->text));
			    nasm_quote(&(tline->text));
			    tline->type = TOK_STRING;
			    continue;
			}
			if (!strcmp("__LINE__", m->name))
			{
			    nasm_free(tline->text);
			    make_tok_num(tline, src_get_linnum());
			    continue;
			}
			tline = delete_Token(tline);
			continue;
		    }
		}
		else
		{
		    /*
		     * Complicated case: at least one macro with this name
		     * exists and takes parameters. We must find the
		     * parameters in the call, count them, find the SMacro
		     * that corresponds to that form of the macro call, and
		     * substitute for the parameters when we expand. What a
		     * pain.
		     */
		    tline = tline->next;
		    skip_white_(tline);
		    if (!tok_is_(tline, "("))
		    {
			/*
			 * This macro wasn't called with parameters: ignore
			 * the call. (Behaviour borrowed from gnu cpp.)
			 */
			tline = mstart;
			m = NULL;
		    }
		    else
		    {
			int paren = 0;
			int white = 0;
			brackets = 0;
			nparam = 0;
			tline = tline->next;
			sparam = PARAM_DELTA;
			params = nasm_malloc(sparam * sizeof(Token *));
			params[0] = tline;
			paramsize = nasm_malloc(sparam * sizeof(int));
			paramsize[0] = 0;
			for (;; tline = tline->next)
			{	/* parameter loop */
			    if (!tline)
			    {
				error(ERR_NONFATAL,
					"macro call expects terminating `)'");
				break;
			    }
			    if (tline->type == TOK_WHITESPACE
				    && brackets <= 0)
			    {
				if (paramsize[nparam])
				    white++;
				else
				    params[nparam] = tline->next;
				continue;	/* parameter loop */
			    }
			    if (tline->type == TOK_OTHER
				    && tline->text[1] == 0)
			    {
				char ch = tline->text[0];
				if (ch == ',' && !paren && brackets <= 0)
				{
				    if (++nparam >= sparam)
				    {
					sparam += PARAM_DELTA;
					params = nasm_realloc(params,
						sparam * sizeof(Token *));
					paramsize = nasm_realloc(paramsize,
						sparam * sizeof(int));
				    }
				    params[nparam] = tline->next;
				    paramsize[nparam] = 0;
				    white = 0;
				    continue;	/* parameter loop */
				}
				if (ch == '{' &&
					(brackets > 0 || (brackets == 0 &&
							!paramsize[nparam])))
				{
				    if (!(brackets++))
				    {
					params[nparam] = tline->next;
					continue;	/* parameter loop */
				    }
				}
				if (ch == '}' && brackets > 0)
				    if (--brackets == 0)
				    {
					brackets = -1;
					continue;	/* parameter loop */
				    }
				if (ch == '(' && !brackets)
				    paren++;
				if (ch == ')' && brackets <= 0)
				    if (--paren < 0)
					break;
			    }
			    if (brackets < 0)
			    {
				brackets = 0;
				error(ERR_NONFATAL, "braces do not "
					"enclose all of macro parameter");
			    }
			    paramsize[nparam] += white + 1;
			    white = 0;
			}	/* parameter loop */
			nparam++;
			while (m && (m->nparam != nparam ||
					mstrcmp(m->name, mname,
						m->casesense)))
			    m = m->next;
			if (!m)
			    error(ERR_WARNING | ERR_WARN_MNP,
				    "macro `%s' exists, "
				    "but not taking %d parameters",
				    mstart->text, nparam);
		    }
		}
		if (m && m->in_progress)
		    m = NULL;
		if (!m)		/* in progess or didn't find '(' or wrong nparam */
		{
		    /* 
		     * Design question: should we handle !tline, which
		     * indicates missing ')' here, or expand those
		     * macros anyway, which requires the (t) test a few
		     * lines down?  
		     */
		    nasm_free(params);
		    nasm_free(paramsize);
		    tline = mstart;
		}
		else
		{
		    /*
		     * Expand the macro: we are placed on the last token of the
		     * call, so that we can easily split the call from the
		     * following tokens. We also start by pushing an SMAC_END
		     * token for the cycle removal.
		     */
		    t = tline;
		    if (t)
		    {
			tline = t->next;
			t->next = NULL;
		    }
		    tt = new_Token(tline, TOK_SMAC_END, NULL, 0);
		    tt->mac = m;
		    m->in_progress = TRUE;
		    tline = tt;
		    for (t = m->expansion; t; t = t->next)
		    {
			if (t->type >= TOK_SMAC_PARAM)
			{
			    Token *pcopy = tline, **ptail = &pcopy;
			    Token *ttt, *pt;
			    int i;

			    ttt = params[t->type - TOK_SMAC_PARAM];
			    for (i = paramsize[t->type - TOK_SMAC_PARAM];
				    --i >= 0;)
			    {
				pt = *ptail =
					new_Token(tline, ttt->type, ttt->text,
					0);
				ptail = &pt->next;
				ttt = ttt->next;
			    }
			    tline = pcopy;
			}
			else
			{
			    tt = new_Token(tline, t->type, t->text, 0);
			    tline = tt;
			}
		    }

		    /*
		     * Having done that, get rid of the macro call, and clean
		     * up the parameters.
		     */
		    nasm_free(params);
		    nasm_free(paramsize);
		    free_tlist(mstart);
		    continue;	/* main token loop */
		}
	    }
	}

	if (tline->type == TOK_SMAC_END)
	{
	    tline->mac->in_progress = FALSE;
	    tline = delete_Token(tline);
	}
	else
	{
	    t = *tail = tline;
	    tline = tline->next;
	    t->mac = NULL;
	    t->next = NULL;
	    tail = &t->next;
	}
    }

    /*
     * Now scan the entire line and look for successive TOK_IDs that resulted
     * after expansion (they can't be produced by tokenise()). The successive
     * TOK_IDs should be concatenated.
     * Also we look for %+ tokens and concatenate the tokens before and after
     * them (without white spaces in between).
     */
    t = thead;
    rescan = 0;
    while (t)
    {
	while (t && t->type != TOK_ID && t->type != TOK_PREPROC_ID)
	    t = t->next;
	if (!t || !t->next)
	    break;
	if (t->next->type == TOK_ID ||
		t->next->type == TOK_PREPROC_ID ||
		t->next->type == TOK_NUMBER)
	{
	    char *p = nasm_strcat(t->text, t->next->text);
	    nasm_free(t->text);
	    t->next = delete_Token(t->next);
	    t->text = p;
	    rescan = 1;
	}
	else if (t->next->type == TOK_WHITESPACE && t->next->next &&
		t->next->next->type == TOK_PREPROC_ID &&
		strcmp(t->next->next->text, "%+") == 0)
	{
	    /* free the next whitespace, the %+ token and next whitespace */
	    int i;
	    for (i = 1; i <= 3; i++)
	    {
		if (!t->next || (i != 2 && t->next->type != TOK_WHITESPACE))
		    break;
		t->next = delete_Token(t->next);
	    }			/* endfor */
	}
	else
	    t = t->next;
    }
    /* If we concatenaded something, re-scan the line for macros */
    if (rescan)
    {
	tline = thead;
	goto again;
    }

    if (org_tline)
    {
	if (thead)
	{
	    *org_tline = *thead;
	    /* since we just gave text to org_line, don't free it */
	    thead->text = NULL;
	    delete_Token(thead);
	}
	else
	{
	    /* the expression expanded to empty line;
	       we can't return NULL for some reasons
	       we just set the line to a single WHITESPACE token. */
	    memset(org_tline, 0, sizeof(*org_tline));
	    org_tline->text = NULL;
	    org_tline->type = TOK_WHITESPACE;
	}
	thead = org_tline;
    }

    return thead;
}

/*
 * Similar to expand_smacro but used exclusively with macro identifiers
 * right before they are fetched in. The reason is that there can be
 * identifiers consisting of several subparts. We consider that if there
 * are more than one element forming the name, user wants a expansion,
 * otherwise it will be left as-is. Example:
 *
 *	%define %$abc cde
 *
 * the identifier %$abc will be left as-is so that the handler for %define
 * will suck it and define the corresponding value. Other case:
 *
 *	%define _%$abc cde
 *
 * In this case user wants name to be expanded *before* %define starts
 * working, so we'll expand %$abc into something (if it has a value;
 * otherwise it will be left as-is) then concatenate all successive
 * PP_IDs into one.
 */
static Token *
expand_id(Token * tline)
{
    Token *cur, *oldnext = NULL;

    if (!tline || !tline->next)
	return tline;

    cur = tline;
    while (cur->next &&
	    (cur->next->type == TOK_ID ||
	cur->next->type == TOK_PREPROC_ID || cur->next->type == TOK_NUMBER))
	cur = cur->next;

    /* If identifier consists of just one token, don't expand */
    if (cur == tline)
	return tline;

    if (cur)
    {
	oldnext = cur->next;	/* Detach the tail past identifier */
	cur->next = NULL;	/* so that expand_smacro stops here */
    }

    tline = expand_smacro(tline);

    if (cur)
    {
	/* expand_smacro possibly changhed tline; re-scan for EOL */
	cur = tline;
	while (cur && cur->next)
	    cur = cur->next;
	if (cur)
	    cur->next = oldnext;
    }

    return tline;
}

/*
 * Determine whether the given line constitutes a multi-line macro
 * call, and return the MMacro structure called if so. Doesn't have
 * to check for an initial label - that's taken care of in
 * expand_mmacro - but must check numbers of parameters. Guaranteed
 * to be called with tline->type == TOK_ID, so the putative macro
 * name is easy to find.
 */
static MMacro *
is_mmacro(Token * tline, Token *** params_array)
{
    MMacro *head, *m;
    Token **params;
    int nparam;

    head = mmacros[hash(tline->text)];

    /*
     * Efficiency: first we see if any macro exists with the given
     * name. If not, we can return NULL immediately. _Then_ we
     * count the parameters, and then we look further along the
     * list if necessary to find the proper MMacro.
     */
    for (m = head; m; m = m->next)
	if (!mstrcmp(m->name, tline->text, m->casesense))
	    break;
    if (!m)
	return NULL;

    /*
     * OK, we have a potential macro. Count and demarcate the
     * parameters.
     */
    count_mmac_params(tline->next, &nparam, &params);

    /*
     * So we know how many parameters we've got. Find the MMacro
     * structure that handles this number.
     */
    while (m)
    {
	if (m->nparam_min <= nparam && (m->plus || nparam <= m->nparam_max))
	{
	    /*
	     * This one is right. Just check if cycle removal
	     * prohibits us using it before we actually celebrate...
	     */
	    if (m->in_progress)
	    {
#if 0
		error(ERR_NONFATAL,
			"self-reference in multi-line macro `%s'", m->name);
#endif
		nasm_free(params);
		return NULL;
	    }
	    /*
	     * It's right, and we can use it. Add its default
	     * parameters to the end of our list if necessary.
	     */
	    if (m->defaults && nparam < m->nparam_min + m->ndefs)
	    {
		params =
			nasm_realloc(params,
			((m->nparam_min + m->ndefs + 1) * sizeof(*params)));
		while (nparam < m->nparam_min + m->ndefs)
		{
		    params[nparam] = m->defaults[nparam - m->nparam_min];
		    nparam++;
		}
	    }
	    /*
	     * If we've gone over the maximum parameter count (and
	     * we're in Plus mode), ignore parameters beyond
	     * nparam_max.
	     */
	    if (m->plus && nparam > m->nparam_max)
		nparam = m->nparam_max;
	    /*
	     * Then terminate the parameter list, and leave.
	     */
	    if (!params)
	    {			/* need this special case */
		params = nasm_malloc(sizeof(*params));
		nparam = 0;
	    }
	    params[nparam] = NULL;
	    *params_array = params;
	    return m;
	}
	/*
	 * This one wasn't right: look for the next one with the
	 * same name.
	 */
	for (m = m->next; m; m = m->next)
	    if (!mstrcmp(m->name, tline->text, m->casesense))
		break;
    }

    /*
     * After all that, we didn't find one with the right number of
     * parameters. Issue a warning, and fail to expand the macro.
     */
    error(ERR_WARNING | ERR_WARN_MNP,
	    "macro `%s' exists, but not taking %d parameters",
	    tline->text, nparam);
    nasm_free(params);
    return NULL;
}

/*
 * Expand the multi-line macro call made by the given line, if
 * there is one to be expanded. If there is, push the expansion on
 * istk->expansion and return 1. Otherwise return 0.
 */
static int
expand_mmacro(Token * tline)
{
    Token *startline = tline;
    Token *label = NULL;
    int dont_prepend = 0;
    Token **params, *t, *tt;
    MMacro *m;
    Line *l, *ll;
    int i, nparam, *paramlen;

    t = tline;
    skip_white_(t);
/*    if (!tok_type_(t, TOK_ID))  Lino 02/25/02 */
    if (!tok_type_(t, TOK_ID) && !tok_type_(t, TOK_PREPROC_ID))
	return 0;
    m = is_mmacro(t, &params);
    if (!m)
    {
	Token *last;
	/*
	 * We have an id which isn't a macro call. We'll assume
	 * it might be a label; we'll also check to see if a
	 * colon follows it. Then, if there's another id after
	 * that lot, we'll check it again for macro-hood.
	 */
	label = last = t;
	t = t->next;
	if (tok_type_(t, TOK_WHITESPACE))
	    last = t, t = t->next;
	if (tok_is_(t, ":"))
	{
	    dont_prepend = 1;
	    last = t, t = t->next;
	    if (tok_type_(t, TOK_WHITESPACE))
		last = t, t = t->next;
	}
	if (!tok_type_(t, TOK_ID) || (m = is_mmacro(t, &params)) == NULL)
	    return 0;
	last->next = NULL;
	tline = t;
    }

    /*
     * Fix up the parameters: this involves stripping leading and
     * trailing whitespace, then stripping braces if they are
     * present.
     */
    for (nparam = 0; params[nparam]; nparam++)
	;
    paramlen = nparam ? nasm_malloc(nparam * sizeof(*paramlen)) : NULL;

    for (i = 0; params[i]; i++)
    {
	int brace = FALSE;
	int comma = (!m->plus || i < nparam - 1);

	t = params[i];
	skip_white_(t);
	if (tok_is_(t, "{"))
	    t = t->next, brace = TRUE, comma = FALSE;
	params[i] = t;
	paramlen[i] = 0;
	while (t)
	{
	    if (comma && t->type == TOK_OTHER && !strcmp(t->text, ","))
		break;		/* ... because we have hit a comma */
	    if (comma && t->type == TOK_WHITESPACE && tok_is_(t->next, ","))
		break;		/* ... or a space then a comma */
	    if (brace && t->type == TOK_OTHER && !strcmp(t->text, "}"))
		break;		/* ... or a brace */
	    t = t->next;
	    paramlen[i]++;
	}
    }

    /*
     * OK, we have a MMacro structure together with a set of
     * parameters. We must now go through the expansion and push
     * copies of each Line on to istk->expansion. Substitution of
     * parameter tokens and macro-local tokens doesn't get done
     * until the single-line macro substitution process; this is
     * because delaying them allows us to change the semantics
     * later through %rotate.
     *
     * First, push an end marker on to istk->expansion, mark this
     * macro as in progress, and set up its invocation-specific
     * variables.
     */
    ll = nasm_malloc(sizeof(Line));
    ll->next = istk->expansion;
    ll->finishes = m;
    ll->first = NULL;
    istk->expansion = ll;

    m->in_progress = TRUE;
    m->params = params;
    m->iline = tline;
    m->nparam = nparam;
    m->rotate = 0;
    m->paramlen = paramlen;
    m->unique = unique++;
    m->lineno = 0;

    m->next_active = istk->mstk;
    istk->mstk = m;

    for (l = m->expansion; l; l = l->next)
    {
	Token **tail;

	ll = nasm_malloc(sizeof(Line));
	ll->finishes = NULL;
	ll->next = istk->expansion;
	istk->expansion = ll;
	tail = &ll->first;

	for (t = l->first; t; t = t->next)
	{
	    Token *x = t;
	    if (t->type == TOK_PREPROC_ID &&
		    t->text[1] == '0' && t->text[2] == '0')
	    {
		dont_prepend = -1;
		x = label;
		if (!x)
		    continue;
	    }
	    tt = *tail = new_Token(NULL, x->type, x->text, 0);
	    tail = &tt->next;
	}
	*tail = NULL;
    }

    /*
     * If we had a label, push it on as the first line of
     * the macro expansion.
     */
    if (label)
    {
	if (dont_prepend < 0)
	    free_tlist(startline);
	else
	{
	    ll = nasm_malloc(sizeof(Line));
	    ll->finishes = NULL;
	    ll->next = istk->expansion;
	    istk->expansion = ll;
	    ll->first = startline;
	    if (!dont_prepend)
	    {
		while (label->next)
		    label = label->next;
		label->next = tt = new_Token(NULL, TOK_OTHER, ":", 0);
	    }
	}
    }

    list->uplevel(m->nolist ? LIST_MACRO_NOLIST : LIST_MACRO);

    return 1;
}

/*
 * Since preprocessor always operate only on the line that didn't
 * arrived yet, we should always use ERR_OFFBY1. Also since user
 * won't want to see same error twice (preprocessing is done once
 * per pass) we will want to show errors only during pass one.
 */
static void
error(int severity, const char *fmt, ...)
{
    va_list arg;
    char buff[1024];

    /* If we're in a dead branch of IF or something like it, ignore the error */
    if (istk && istk->conds && !emitting(istk->conds->state))
	return;

    va_start(arg, fmt);
    vsprintf(buff, fmt, arg);
    va_end(arg);

    if (istk && istk->mstk && istk->mstk->name)
	_error(severity | ERR_PASS1, "(%s:%d) %s", istk->mstk->name,
		istk->mstk->lineno, buff);
    else 
	_error(severity | ERR_PASS1, "%s", buff);
}

static void
pp_reset(char *file, int apass, efunc errfunc, evalfunc eval,
	ListGen * listgen)
{
    int h;

    _error = errfunc;
    cstk = NULL;
    istk = nasm_malloc(sizeof(Include));
    istk->next = NULL;
    istk->conds = NULL;
    istk->expansion = NULL;
    istk->mstk = NULL;
    istk->fp = fopen(file, "r");
    istk->fname = NULL;
    src_set_fname(nasm_strdup(file));
    src_set_linnum(0);
    istk->lineinc = 1;
    if (!istk->fp)
	error(ERR_FATAL | ERR_NOFILE, "unable to open input file `%s'", file);
    defining = NULL;
    for (h = 0; h < NHASH; h++)
    {
	mmacros[h] = NULL;
	smacros[h] = NULL;
    }
    unique = 0;
	if (tasm_compatible_mode) {
	    stdmacpos = stdmac;
	} else {
		stdmacpos = &stdmac[TASM_MACRO_COUNT];
	}
    any_extrastdmac = (extrastdmac != NULL);
    list = listgen;
    evaluate = eval;
    pass = apass;
}

static char *
pp_getline(void)
{
    char *line;
    Token *tline;

    while (1)
    {
	/*
	 * Fetch a tokenised line, either from the macro-expansion
	 * buffer or from the input file.
	 */
	tline = NULL;
	while (istk->expansion && istk->expansion->finishes)
	{
	    Line *l = istk->expansion;
	    if (!l->finishes->name && l->finishes->in_progress > 1)
	    {
		Line *ll;

		/*
		 * This is a macro-end marker for a macro with no
		 * name, which means it's not really a macro at all
		 * but a %rep block, and the `in_progress' field is
		 * more than 1, meaning that we still need to
		 * repeat. (1 means the natural last repetition; 0
		 * means termination by %exitrep.) We have
		 * therefore expanded up to the %endrep, and must
		 * push the whole block on to the expansion buffer
		 * again. We don't bother to remove the macro-end
		 * marker: we'd only have to generate another one
		 * if we did.
		 */
		l->finishes->in_progress--;
		for (l = l->finishes->expansion; l; l = l->next)
		{
		    Token *t, *tt, **tail;

		    ll = nasm_malloc(sizeof(Line));
		    ll->next = istk->expansion;
		    ll->finishes = NULL;
		    ll->first = NULL;
		    tail = &ll->first;

		    for (t = l->first; t; t = t->next)
		    {
			if (t->text || t->type == TOK_WHITESPACE)
			{
			    tt = *tail = new_Token(NULL, t->type, t->text, 0);
			    tail = &tt->next;
			}
		    }

		    istk->expansion = ll;
		}
	    }
	    else
	    {
		/*
		 * Check whether a `%rep' was started and not ended
		 * within this macro expansion. This can happen and
		 * should be detected. It's a fatal error because
		 * I'm too confused to work out how to recover
		 * sensibly from it.
		 */
		if (defining)
		{
		    if (defining->name)
			error(ERR_PANIC, "defining with name in expansion");
		    else if (istk->mstk->name)
			error(ERR_FATAL, "`%%rep' without `%%endrep' within"
				" expansion of macro `%s'", istk->mstk->name);
		}

		/*
		 * FIXME:  investigate the relationship at this point between
		 * istk->mstk and l->finishes
		 */
		{
		    MMacro *m = istk->mstk;
		    istk->mstk = m->next_active;
		    if (m->name)
		    {
			/*
			 * This was a real macro call, not a %rep, and
			 * therefore the parameter information needs to
			 * be freed.
			 */
			nasm_free(m->params);
			free_tlist(m->iline);
			nasm_free(m->paramlen);
			l->finishes->in_progress = FALSE;
		    }
		    else
			free_mmacro(m);
		}
		istk->expansion = l->next;
		nasm_free(l);
		list->downlevel(LIST_MACRO);
	    }
	}
	while (1)
	{			/* until we get a line we can use */

	    if (istk->expansion)
	    {			/* from a macro expansion */
		char *p;
		Line *l = istk->expansion;
		if (istk->mstk)
		    istk->mstk->lineno++;
		tline = l->first;
		istk->expansion = l->next;
		nasm_free(l);
		p = detoken(tline, FALSE);
		list->line(LIST_MACRO, p);
		nasm_free(p);
		break;
	    }
	    line = read_line();
	    if (line)
	    {			/* from the current input file */
		line = prepreproc(line);
		tline = tokenise(line);
		nasm_free(line);
		break;
	    }
	    /*
	     * The current file has ended; work down the istk
	     */
	    {
		Include *i = istk;
		fclose(i->fp);
		if (i->conds)
		    error(ERR_FATAL, "expected `%%endif' before end of file");
		/* only set line and file name if there's a next node */
		if (i->next) 
		{
		    src_set_linnum(i->lineno);
		    nasm_free(src_set_fname(i->fname));
		}
		istk = i->next;
		list->downlevel(LIST_INCLUDE);
		nasm_free(i);
		if (!istk)
		    return NULL;
	    }
	}

	/*
	 * We must expand MMacro parameters and MMacro-local labels
	 * _before_ we plunge into directive processing, to cope
	 * with things like `%define something %1' such as STRUC
	 * uses. Unless we're _defining_ a MMacro, in which case
	 * those tokens should be left alone to go into the
	 * definition; and unless we're in a non-emitting
	 * condition, in which case we don't want to meddle with
	 * anything.
	 */
	if (!defining && !(istk->conds && !emitting(istk->conds->state)))
	    tline = expand_mmac_params(tline);

	/*
	 * Check the line to see if it's a preprocessor directive.
	 */
	if (do_directive(tline) == DIRECTIVE_FOUND)
	{
	    continue;
	}
	else if (defining)
	{
	    /*
	     * We're defining a multi-line macro. We emit nothing
	     * at all, and just
	     * shove the tokenised line on to the macro definition.
	     */
	    Line *l = nasm_malloc(sizeof(Line));
	    l->next = defining->expansion;
	    l->first = tline;
	    l->finishes = FALSE;
	    defining->expansion = l;
	    continue;
	}
	else if (istk->conds && !emitting(istk->conds->state))
	{
	    /*
	     * We're in a non-emitting branch of a condition block.
	     * Emit nothing at all, not even a blank line: when we
	     * emerge from the condition we'll give a line-number
	     * directive so we keep our place correctly.
	     */
	    free_tlist(tline);
	    continue;
	}
	else if (istk->mstk && !istk->mstk->in_progress)
	{
	    /*
	     * We're in a %rep block which has been terminated, so
	     * we're walking through to the %endrep without
	     * emitting anything. Emit nothing at all, not even a
	     * blank line: when we emerge from the %rep block we'll
	     * give a line-number directive so we keep our place
	     * correctly.
	     */
	    free_tlist(tline);
	    continue;
	}
	else
	{
	    tline = expand_smacro(tline);
	    if (!expand_mmacro(tline))
	    {
		/*
		 * De-tokenise the line again, and emit it.
		 */
		line = detoken(tline, TRUE);
		free_tlist(tline);
		break;
	    }
	    else
	    {
		continue;	/* expand_mmacro calls free_tlist */
	    }
	}
    }

    return line;
}

static void
pp_cleanup(int pass)
{
    int h;

    if (defining)
    {
	error(ERR_NONFATAL, "end of file while still defining macro `%s'",
		defining->name);
	free_mmacro(defining);
    }
    while (cstk)
	ctx_pop();
    for (h = 0; h < NHASH; h++)
    {
	while (mmacros[h])
	{
	    MMacro *m = mmacros[h];
	    mmacros[h] = mmacros[h]->next;
	    free_mmacro(m);
	}
	while (smacros[h])
	{
	    SMacro *s = smacros[h];
	    smacros[h] = smacros[h]->next;
	    nasm_free(s->name);
	    free_tlist(s->expansion);
	    nasm_free(s);
	}
    }
    while (istk)
    {
	Include *i = istk;
	istk = istk->next;
	fclose(i->fp);
	nasm_free(i->fname);
	nasm_free(i);
    }
    while (cstk)
	ctx_pop();
    if (pass == 0)
	{
		free_llist(predef);
		delete_Blocks();
	}
}

void
pp_include_path(char *path)
{
    IncPath *i;

    i = nasm_malloc(sizeof(IncPath));
    i->path = nasm_strdup(path);
    i->next = ipath;
    ipath = i;
}

void
pp_pre_include(char *fname)
{
    Token *inc, *space, *name;
    Line *l;

    name = new_Token(NULL, TOK_INTERNAL_STRING, fname, 0);
    space = new_Token(name, TOK_WHITESPACE, NULL, 0);
    inc = new_Token(space, TOK_PREPROC_ID, "%include", 0);

    l = nasm_malloc(sizeof(Line));
    l->next = predef;
    l->first = inc;
    l->finishes = FALSE;
    predef = l;
}

void
pp_pre_define(char *definition)
{
    Token *def, *space;
    Line *l;
    char *equals;

    equals = strchr(definition, '=');
    space = new_Token(NULL, TOK_WHITESPACE, NULL, 0);
    def = new_Token(space, TOK_PREPROC_ID, "%define", 0);
    if (equals)
	*equals = ' ';
    space->next = tokenise(definition);
    if (equals)
	*equals = '=';

    l = nasm_malloc(sizeof(Line));
    l->next = predef;
    l->first = def;
    l->finishes = FALSE;
    predef = l;
}

void
pp_pre_undefine(char *definition)
{
    Token *def, *space;
    Line *l;

    space = new_Token(NULL, TOK_WHITESPACE, NULL, 0);
    def = new_Token(space, TOK_PREPROC_ID, "%undef", 0);

    l = nasm_malloc(sizeof(Line));
    l->next = predef;
    l->first = def;
    l->finishes = FALSE;
    predef = l;
}

void
pp_extra_stdmac(const char **macros)
{
    extrastdmac = macros;
}

static void
make_tok_num(Token * tok, long val)
{
    char numbuf[20];
    sprintf(numbuf, "%ld", val);
    tok->text = nasm_strdup(numbuf);
    tok->type = TOK_NUMBER;
}

Preproc nasmpp = {
    pp_reset,
    pp_getline,
    pp_cleanup
};
