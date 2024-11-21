
#include <stdio.h>
#include <string.h>
#include "cc.h"

#ifdef __GNUC__
__inline
#endif
static unsigned int hash2 P((register const char *, register size_t));

#include "token2.h"
