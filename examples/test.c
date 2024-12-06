#include "nanoprintf.h"

extern int write(int, char *, int);
extern void exit(int);

#define BUF_SIZE 128

int main()
{
	char buffer[BUF_SIZE];

	int size = npf_snprintf(buffer, BUF_SIZE, "Hello %s!\n", "World");
	write(1, buffer, size);
	exit(0);
}
