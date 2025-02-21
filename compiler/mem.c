#ifdef __ELKS__

/* ELKS far memory functions */
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void *farmalloc(size_t size)
{
    return fmemalloc(size);
}

void farfree(void *ptr)
{
    if (ptr == NULL)
        return;
    fmemfree(ptr);
}

void *farrealloc(void *ptr, size_t size)
{
    void *new;
    size_t osize = size;

    if (ptr == 0)
        return farmalloc(size);

    new = farmalloc(size);
    if (new == 0) {
        __dprintf("realloc: Out of memory\n");
        return 0;
    }
    memcpy(new, ptr, osize);    /* FIXME copies too much but can't get real osize */
    farfree(ptr);
    return new;
}
#else

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

void *farmalloc(size_t size)
{
    return malloc(size);
}

void farfree(void *ptr)
{
    free(ptr);
}

void *farrealloc(void *ptr, size_t size)
{
    return realloc(ptr, size);
}

#endif
