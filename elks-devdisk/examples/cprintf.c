
#include <stdarg.h>
#include "cprintf.h"

extern int write(int, char *, int);

static void printchar(char c)
{
	write(1, &c, 1);
}

static void printint(int xx, int base, int sign)
{
	char digits[] = "0123456789abcdef";
	char buf[16];
	int j;
	unsigned int x;

	if (sign && (sign = xx < 0))
		x = -xx;
	else
		x = xx;

	j = 0;
	do {
		buf[j++] = digits[(unsigned int) (x % base)];
	} while ((x /= base) != 0);

	if (sign)
		buf[j++] = '-';

	while (--j >= 0)
		printchar(buf[j]);
}

void cprintf(const char *format, ...)
{
	va_list args; // Declare a va_list variable to manage the variable arguments

	// Initialize the va_list 'args' to start at the argument after 'format'
	va_start(args, format);

	while (*format) // Loop through the format string
	{
		// If a format specifier is encountered
		if (*format == '%')
		{
			format++;
			if (*format == 'd')
			{
				// Fetch the next argument as an integer and print it
				printint(va_arg(args, int), 10, 1);
			}
			else if (*format == 'o')
			{
				printint(va_arg(args, int), 8, 1);
			}
			else if (*format == 'p' || *format == 'x')
			{
				printint(va_arg(args, int), 16, 0);
			}
			else if (*format == 's')
			{
				// Fetch the next argument as a string and print it
				char *s = va_arg(args, char *);
				for(; *s; s++)
					printchar(*s);
			}
			else if (*format == 'c')
			{
				printchar(va_arg(args, char));
			}
		}
		else
		{
			// Print regular characters
			printchar(*format);
		}
		format++; // Move to the next character
	}
	// Cleanup the va_list 'args' after processing
	va_end(args);
}
