extern int write(int, char *, int);
extern void exit(int);

int main()
{
	write(1, "Hello World\n", 12);
	exit(0);
}
