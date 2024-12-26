
#include <stdarg.h>
#include "cprintf.h"
#include <stdio.h>
#include <stdlib.h>

extern int write(int, char *, int);
extern int read(int, void *, int count);
extern void exit(int);

int main()
{
	cprintf("Hello World %c %s %d!\n", '1', "2", 3);
	printf("Hello World %c %s %d!\n", '1', "2", 3);

	exit(0);
}
