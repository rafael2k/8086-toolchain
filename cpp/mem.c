#include <stdio.h>
#include <stddef.h>
#include <stdlib.h>
#include <string.h>

#include "mem.h"
#include "cc.h"


void *xalloc (size_t size)
{
	void *p;
#ifdef __ELKS__
    p = fmemalloc(size);
#else
    p = malloc(size);
#endif
    if (!p)
        cfatal("Out of memory");
    return p;
}

void *xrealloc (void *q, size_t size)
{
    void *p;

#ifdef __ELKS__
    if (!q)
        return fmemalloc(size);
    p = fmemalloc(size);
    if (p) {                    /* on fail, previous memory not freed */
        memcpy(p, q, size);     /* FIXME copies too much!! */
        fmemfree(q);
    }
#else
    p = q ? realloc(q, size) : malloc(size);
#endif

    if (!p)
        cfatal("Out of memory");

    return p;
}

void xfree (void *q)
{
    if (q) {
#ifdef __ELKS__
        fmemfree (q);
#else
        free(q);
#endif
    }
}
