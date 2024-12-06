#include "nanoprintf.h"

extern int write(int, char *, int);
extern void exit(int);

int main()
{
	char buffer[128];
	// write(1, "Hello World\n", 12);
	npf_snprintf(buffer, 128, "Hello %s!\n", "World");
	write(1, buffer, 13);
	exit(0);
}
