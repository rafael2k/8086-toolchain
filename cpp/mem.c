#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "mem.h"
#include "cc.h"


#include <stdio.h>
#include <unistd.h>
#include <stdlib.h>
#include <string.h>
#include <fcntl.h>
#include <errno.h>

#define MAX_NEAR_ALLOC  512U   /* max size to allocate from near heap */

#define SEGMENT(ptr)    ((unsigned long)(char __far *)(ptr) >> 16)

#ifdef __ELKS__
void __far *xalloc(unsigned long size)
{
	char *p;
	char __far *fp;
	if (size <= MAX_NEAR_ALLOC)
	{
		p = malloc((unsigned int)size);
		if (p == NULL)
			return (void __far *)p;
	}
	fp = fmemalloc(size);
	return fp;
}
#else
void *xalloc(unsigned long size)
{
	return malloc(size);
}
#endif

#ifdef __ELKS__
void xfree(void __far *ptr)
{
	if (ptr == 0)
		return;
	if (SEGMENT(ptr) == SEGMENT(&ptr)) /* near pointer */
	{
		free((char *)ptr);
	} else
	{
		fmemfree(ptr);
	}
}
#else
void xfree(void *ptr)
{
	free(ptr);
}
#endif

#ifdef __ELKS__
void __far *xrealloc(void __far *ptr, unsigned long size)
{
	void __far *new;
	if (!ptr)
		return xalloc(size);
	new = xalloc(size);
	if (!new)
		return NULL;            /* previous memory not freed */
	memcpy(new, ptr, size);    /* FIXME copies too much!! */
	xfree(ptr);
	return new;
}
#else
void *xrealloc(void *ptr, unsigned long size)
{
	return realloc(ptr, size);
}
#endif
