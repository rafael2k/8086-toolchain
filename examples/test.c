extern int write(int, char *, int);
extern int read(int, void *, int count);
extern void exit(int);


#define BUF_SIZE 128

int main()
{
	char buffer[BUF_SIZE] = "Hello World\n";
	int size = 12;
//	int size = read(0, buffer, 15);
//	int size = npf_snprintf(buffer, BUF_SIZE, "Hello %s!\n", "World");
	write(1, buffer, size);
	exit(0);
}
