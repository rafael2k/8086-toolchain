#ifndef MEM_H_
#define MEM_H_

void *farmalloc(size_t size);
void farfree(void *ptr);
void *farrealloc(void *ptr, size_t size);

#endif // MEM_H_
