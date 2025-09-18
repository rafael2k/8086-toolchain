extern int write(int, char *, int);
extern int read(int, void *, int count);
extern void exit(int);


int main()
{
	write(1, "Hello World!\n", 13);
	exit(0);
}
