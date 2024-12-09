#ifndef MEM_H_
#define MEM_H_

#include <stddef.h>

void *xalloc (size_t size);

void *xrealloc (void *q, size_t size);

void xfree (void *q);

#endif // MEM_H_
