/* globvar.h - global variables for linker */

/* Copyright (C) 1994 Bruce Evans */

#ifndef EXTERN
#define EXTERN
#endif
EXTERN unsigned errcount;		/* count of errors */
EXTERN struct entrylist *entryfirst;	/* first on list of entry symbols */
EXTERN struct modstruct *modfirst;	/* data for 1st module */
EXTERN struct redlist *redfirst;	/* first on list of redefined symbols */

/* K&R _explicitly_ says extern followed by public is OK */
extern char hexdigit[];			/* constant */
extern int  headerless;			/* Don't output header on exe */
#ifndef VERY_SMALL_MEMORY
extern int  v7;				/* Generate an UNIX v7 a.out header */
#endif
#ifndef MSDOS
extern int  cpm86;			/* Generate CP/M-86 CMD header */
#endif

extern bin_off_t text_base_value;	/* Base address of text seg */
extern bin_off_t data_base_value;	/* Base or alignment of data seg */
extern bin_off_t heap_top_value;	/* Heap size */
extern bin_off_t stack_value;	        /* Minimum stack size */
