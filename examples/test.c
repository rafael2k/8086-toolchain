//#include <stdio.h>
//#include <stdlib.h>
//#include <unistd.h>
#include "cprintf.h"
int printf(const char *fmt, ...);
extern char **environ;

int main(int ac, char **av)
{
    printf("args: %d\n", ac);
    while (*av)
        printf("'%s' ", *av++);
    printf("\n");
    printf("environ:\n");
    char **p = environ;
    while (*p)
        printf("%s\n", *p++);
	cprintf("Hello World %c %s %d!\n", '1', "2", 3);
	printf("Hello World %c %s %d!\n", '1', "2", 3);

	return 63;
}
