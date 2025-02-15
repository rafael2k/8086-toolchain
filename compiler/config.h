/*
 *		c o n f i g . h
 *
 *	You will need to edit this file to set up the options that
 *	you want when building your version of c68/c386.  Most of
 *	the choices are obvious from the comments, and in the more
 *	obscure cases detailed guidance is given.
 *
 *	In principle those options that you do not want activated
 *	are changed to comments by inserting the 'start comment'
 *	symbol at the start of the line - and removing it to activate
 *	an option.
 */

#ifndef _CONFIG_H
#define	_CONFIG_H

/*
 *	GENERAL OPTIONS
 *	~~~~~~~~~~~~~~~
 */
/*
 *	Set the following options to suit your system/requirements
 */
#define ERRORLEVEL_DEFAULT 0	/* Default error level                       */
#define	WARNLEVEL_DEFAULT 3	/* Default warning level                     */

#define	ASM			/* ASM statement support                     */
#define	ASMCALL			/* User specified ASM call sequence	     */
#undef 	DEBUG			/* Include internal debug code               */
#define	DEBUGOPT		/* Include -g command line option            */
#undef	DOINLINE		/* Inline functions                          */
#undef	ENVVAR			/* Compiler options in environment variable  */
				/* requires the getopt() call                */
#define	FACIST			/* Allow 'facist' checking of code           */
#undef	FLOAT_CHECK		/* Support warning for FP operations         */
#define	FORMAT_CHECK		/* Check fprintf and fscanf format strings   */
#undef	HAS_NLS			/* System supports message catalogues        */
#define	HAS_STDARG		/* System supports stdarg.h                  */
#define	LIST			/* Output symbol tables                      */
#define	PACKENUM		/* Allow enumerations to be any integer type */
#undef	PEEPFLOW		/* Include peephole flow optimisations       */
#define	PROBES			/* Support stack probes                      */
#define	SEQUENCE		/* Check sequence points                     */
#define	SIGNAL			/* Catch internal signal to exit graceful    */
				/* requires the signal() call                */
#define	STACK_CHECK		/* Library routine to check stack size       */
#undef	TOPSPEED		/* Enable Topspeed compiler extensions       */
#define	TRANSLATE		/* Include output names translation option   */
#define	TYPEOF			/* Include __typeof__ keyword                */
/*
 *	These options tend not to be changed except when developing
 */
#undef	VERBOSE			/* Support verbose mode */
#undef	ICODE			/* Support icode analysis code */
/*
 *	This option is still experimental and under development, so it
 *	should not normally be activated.
 */
#undef	TRACE			/* Calls for trace/debugger support */
#undef	EXTERNAL		/* Lists external definitions */

#undef	SYNTAX_CORRECT
/*
 *	FLOATING POINT OPTIONS
 *	======================
 */
/*
 *	This option is used to allow a version of c68/c386 to be built
 *	that does not have built in floating point support, but allows
 *	the float and double keywords to be recognised at the syntax
 *	checking stage.  This is quite likely to be required to avoid
 *	compilation errors if header files which use these keywords are
 *	included by programs.
 */
#undef	FLOAT_KEYWORDS		/* Floating point keywords recognised */
/*
 *	The following are used to determine what type of floating point
 *	support is required (the MFFP option only applies to c68).
 *	If neither option is defined, then the generated compiler is
 *	not capable of handling floating point.
 */
#undef FLOAT_IEEE		/* Treat FP numbers as IEEE */
#undef	FLOAT_MFFP		/* Treat FP numbers as MFFP */

/*	This option is only used while bootstrapping a floating point compiler.
 *	It provides just enough floating point support to continue working
 *	towards the a version that has full floating point support.   At the
 *	end of the bootstrap process you unset this option and build the
 *	final version of c68/c386 which has full floating point support.
 */
#undef	FLOAT_BOOTSTRAP		/* Bootstrapping floating point version */

/*
 *	This option is used while bootstrapping a compiler which supports
 *	long long and unsigned long long.
 */
#undef	LONGLONG_BOOTSTRAP	/* Bootstrapping long long version */

/*
 *	PROCESSOR Selection
 *	~~~~~~~~~~~~~~~~~~~
 *
 * These options determine which code generators will be built into the
 * compiler.
 */
#undef	MC68K			/* Motorola 68000 compiler */
#define	INTEL_86		/* Intel 8086 compiler */
#undef	INTEL_386		/* Intel 80386 compiler */
#undef	ARM			/* ARM compiler */
#undef	TMS320C30		/* TI TMS320C30 compiler */

/*
 * Only one of the options below must be defined (and is only relevant
 * if more than one processor type has been selected).
 */
#undef	MC68000_DEFAULT		/* Default processor is MC68000 */
#define	INTEL_86_DEFAULT	/* Default processor is Intel 8086 */
#undef	INTEL_386_DEFAULT	/* Default processor is Intel 80386 */
#undef	ARM_DEFAULT		/* Default processor is ARM */
#undef	TMS320C30_DEFAULT	/* Default processor is TI TMS320C30 */

/*
 *	Assembler Selection
 *	~~~~~~~~~~~~~~~~~~~
 *
 * These options determine which assembler syntax are supported by the
 * compiler - this may be dependent on the code generators selected.
 */

#undef	TARGET_ACK		/* Assembler is ACK     Motorola */
#undef	TARGET_CPM		/* Assembler is DRI     Motorola */
#undef	TARGET_QMAC		/* Assembler is QMAC    Motorola */
#undef	TARGET_GAS		/* Assembler is GAS     Motorola/Intel */
#undef	TARGET_SUN		/* Assembler is Sun     Intel */
#define	TARGET_BAS		/* Assembler is BCC     Intel */
#undef	TARGET_SYSV		/* Assembler is SVR4.0  Intel */
#undef	TARGET_MASM		/* Assembler is Microsoft Intel */
#undef	TARGET_ARM		/* Assembler is Arm     ARM */
#undef	TARGET_OBJ		/* Assembler is ObjAsm  ARM */
#undef	TARGET_ROSSIN		/* Assembler is Rossin? */
/* The following NASM option was added and was not an option of the original config file.
   Support for NASM had been built in but the NASM output code (outx86_n.c) was 
   replaced with my custom version based on the MASM version. -WSF */
#define TARGET_NASM		// Added. -WSF

#undef	TARGET_ACK_DEFAULT	/* Default Assembler is ACK     Motorola */
#undef	TARGET_CPM_DEFAULT	/* Default Assembler is DRI     Motorola */
#undef	TARGET_QMAC_DEFAULT	/* Default Assembler is QMAC    Motorola */
#undef	TARGET_GAS_DEFAULT	/* Default Assembler is GAS     Motorola/Intel */
#undef	TARGET_SUN_DEFAULT	/* Default Assembler is Sun     Intel */
#define TARGET_BAS_DEFAULT	/* Default Assembler is BCC     Intel */
#undef	TARGET_SYSV_DEFAULT	/* Default Assembler is SVR4.0  Intel */
#undef	TARGET_MASM_DEFAULT	/* Default Assembler is Microsoft Intel */
#undef	TARGET_ARM_DEFAULT	/* Default Assembler is Arm     ARM */
#undef	TARGET_OBJ_DEFAULT	/* Default Assembler is ObjAsm  ARM */
#undef	TARGET_ROSSIN_DEFAULT	/* Default Assembler is Rossin */
/* See comment above for TARGET_NASM */
#undef TARGET_NASM_DEFAULT		// Added. -WSF

/*
 *	DEBUG INFORMATION
 *	~~~~~~~~~~~~~~~~~
 *	The following definition control the generation of debugging
 *	information in the output file (under construction).
 */
#undef	DWARF2			/* DWARF 2 debugging information */

/*
 *	COMPILATION SYSTEM
 *	~~~~~~~~~~~~~~~~~~
 *	The following definition is used to work around a bug in the
 *	ACK assembler issued with MINIX 1.5 and earlier.  If your version
 *	of ACK has this bug fixed, then in some cases slightly more
 *	efficient code is generated if you comment out this option
 */
#undef	MOVEMBUG		/* Assembler has problems in MOVEM (Motorola) */
#undef	CMP_BUG			/* Assembler has problems in CMP (Motorola) */
#undef	RELOC_BUG		/* Assembler has problems with Label1-Label2 */

/*
 *	PORTING DEFINITIONS
 *	~~~~~~~~~~~~~~~~~~~~
 *	The defines in this section will only need changing if you are
 *	trying to build c68/c386 with a compiler that does not support
 *	all the facilities of c68/c386.  It is likely that you may still
 *	have to make some changes to the code, but changing these
 *	#defines appropriately will help keep it to a minimum.
 */
#undef	void			/* Set active if 'void' not supported */
#define VOIDSTAR void *		/* Set to char * if 'void' not supported */
#define VOIDCAST (void)		/* Set to space if 'void' not supported */

/*
 *	The C99 standard introduced the long long and unsigned long long
 *	types.   If the host compiler supports these types then define
 *	the following symbol.
 */
#undef	LONGLONG

/*
 *	The C91 standard introduced the long double type.
 *	If the host compiler supports this type then define
 *	the following symbol.
 */  
#undef LONGDOUBLE
    
/*
 *	Many K&R compiler have assumed that the result of the sizeof operator
 *	is an int.  However ANSI assumes that the result is the type size_t.
 *	Ensure that the setting is compatible with the value defined in your
 *	library and header files.
 */
#define	STP_SIZE	stp_uint	/* size_t type; either stp_uint or stp_ulong */
								/* 8086 needs 16-bit sizes */

/*
 *	Many K&R compilers have assumed that the result of the pointer
 *	difference operation is an int.  However ANSI assumes that the
 *	result is the type ptrdiff_t.  Ensure that the setting is compatible
 *	with the value defined in your library and header files.
 *	 NOTE: This must be a signed value.
 */
#define	STP_PTRDIFF	stp_int		/* ptrdiff_t type; either stp_int or stp_long */
								/* 8086 Needs 16-bit pointers. -WSF */

/*
 *	The type of a wide character is implementation defined and has an
 *	integral type.
 */
#define       STP_WIDE        stp_char
/*#define STP_WIDE        stp_long*/

/*
 *	The compiler does its own memory allocation.  AL_HOST should be
 *	set to the worst case alignment requirements of the host system.
 *	(Must be a power of 2.)
 *	If left unset then the compiler will make a "best guess" at the
 *	alignment requirements.
 */
#if 0
#define AL_HOST         ((SIZE) 2)	/* Align memory on AL_HOST bytes */
#endif

/*
 *	If the host compiler doesn't support bitfields then define this
 *	definition to do nothing.
 *	This allows structures within the compiler to take less space at
 *	the cost of extra run-time code.
 */
/*#define COLON(x)	: x*/
#define COLON(x)

/*
 *	If your compiler requires all files to contain at least one
 *	declaration then define the following item.   This will declare
 *	a dummy static item in all files.
 */
#undef	NO_EMPTY_FILES		/* Declare dummy static in all files */

#include "check.h"
#endif /* _CONFIG_H */
