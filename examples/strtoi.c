/* convert string to unsigned int */

static int digit(char c, int base)
{
	int d;
	if (c <= '9') {
		d = c - '0';
	} else if (c < 'A') {	/* NEATLIBC bugfix */
		return -1;
	} else if (c <= 'Z') {
		d = 10 + c - 'A';
	} else {
		d = 10 + c - 'a';
	}
	return d < base ? d : -1;
}

unsigned int strtoi(const char *s, int base)
{
	int sgn = 1;
	unsigned int num;
	int dig;

	for (num = 0; (dig = digit(*s, base)) >= 0; s++) {
		num *= base;
		num += dig;
	}
	return num;
}
