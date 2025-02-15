
/* linksyms.c - write binary file for linker */

/* Copyright (C) 1994 Bruce Evans */

#include "syshead.h"
#include "const.h"
#include "obj.h"
#include "type.h"
#undef EXTERN
#include "globvar.h"

FORWARD void linkrefs P((struct modstruct *modptr));
PUBLIC bool_t reloc_output = 0;

/* link all symbols connected to entry symbols */

PUBLIC void linksyms(argreloc_output)
bool_pt argreloc_output;
{
    char needlink;
    struct entrylist *elptr;
    struct modstruct *modptr;
    struct symstruct *symptr;

    (void)argreloc_output;
#ifdef REL_OUTPUT
    reloc_output = argreloc_output;
    if (argreloc_output)
    {
	if (modfirst->modnext != NUL_PTR)
	    fatalerror("relocatable output only works for one input file");
	for (modptr = modfirst; modptr != NUL_PTR; modptr = modptr->modnext)
	    modptr->loadflag = TRUE;
	return;
    }
#endif
    if ((symptr = findsym("start")) != NUL_PTR ||
        (symptr = findsym("_main")) != NUL_PTR)
	entrysym(symptr);
    do
    {
	if ((elptr = entryfirst) == NUL_PTR)
	    fatalerror("no start symbol");
	for (modptr = modfirst; modptr != NUL_PTR; modptr = modptr->modnext)
	    modptr->loadflag = FALSE;
	for (; elptr != NUL_PTR; elptr = elptr->elnext)
	    linkrefs(elptr->elsymptr->modptr);
	if ((symptr = findsym("start")) != NUL_PTR)
	    linkrefs(symptr->modptr);
	needlink = FALSE;
	{
	    struct redlist *prlptr = 0;
	    struct redlist *rlptr;

	    for (rlptr = redfirst; rlptr != NUL_PTR;
		 rlptr = (prlptr = rlptr)->rlnext)
		if (rlptr->rlmodptr->loadflag &&
		    rlptr->rlmodptr->class > rlptr->rlsymptr->modptr->class)
		{
		    rlptr->rlsymptr->modptr = rlptr->rlmodptr;
		    rlptr->rlsymptr->value = rlptr->rlvalue;
		    if (rlptr == redfirst)
			redfirst = rlptr->rlnext;
		    else
			prlptr->rlnext = rlptr->rlnext;
		    needlink = TRUE;
		}
	}
    }
    while (needlink);
}

PRIVATE void linkrefs(modptr)
struct modstruct *modptr;
{
    register struct symstruct **symparray;
    register struct symstruct *symptr;

    modptr->loadflag = TRUE;
    for (symparray = modptr->symparray;
	 (symptr = *symparray) != NUL_PTR; ++symparray)
	if (symptr->modptr->loadflag == FALSE)
	    linkrefs(symptr->modptr);
}

