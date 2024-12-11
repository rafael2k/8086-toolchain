#ifndef MEM_H_
#define MEM_H_

#include <stddef.h>

#ifdef __ELKS__
void __far *xalloc (unsigned long size);
void __far *xrealloc (void __far *ptr, unsigned long size);
void xfree (void __far *ptr);
#else
void *xalloc (size_t size);
void *xrealloc (void *ptr, size_t size);
void xfree (void *ptr);
#endif

#endif // MEM_H_
