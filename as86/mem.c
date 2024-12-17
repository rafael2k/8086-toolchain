#ifdef __ELKS__
/* malloc/free wholesale replacement for 8086 toolchain */
#include <stdlib.h>
#include <string.h>

#define MALLOC_ARENA_SIZE   65520U  /* size of initial arena fmemalloc (max 65520)*/
#define MALLOC_ARENA_THRESH 1024U   /* max size to allocate from arena-managed heap */

unsigned int malloc_arena_size = MALLOC_ARENA_SIZE;
unsigned int malloc_arena_thresh = MALLOC_ARENA_THRESH;

#define FP_SEG(fp)          ((unsigned)((unsigned long)(void __far *)(fp) >> 16))
#define FP_OFF(fp)          ((unsigned)(unsigned long)(void __far *)(fp))

static void __far *heap;

void *malloc(size_t size)
{
    char *p;

    if (heap == NULL) {
        heap = fmemalloc(malloc_arena_size);
        __amalloc_add_heap(heap, malloc_arena_size);
    }

    if (size <= malloc_arena_thresh)
        p = __amalloc(size);
    else p = fmemalloc(size);
    return p;
}

void free(void *ptr)
{
    if (ptr == NULL)
        return;
    if (FP_OFF(ptr) == 0)       /* non-arena pointer */
        fmemfree(ptr);
    else
        __afree(ptr);
}

void *realloc(void *ptr, size_t size)
{
	void *new;
    size_t osize = size;

	if (ptr == 0)
		return malloc(size);

#if LATER
    /* we can't yet get size from fmemalloc'd block */
	osize = malloc_usable_size(ptr);
    if (size <= osize)
        osize = size;           /* copy less bytes in memcpy below */
#endif

	new = malloc(size);
	if (new == 0)
		return 0;
	memcpy(new, ptr, osize);    /* FIXME copies too much but can't get real osize */
	free(ptr);
	return new;
}
#endif
