
#include <stdio.h>
#include <string.h>
#include "cc.h"

#ifdef __GNUC__
__inline
#endif
static unsigned int hash1 P((register const char *, register size_t));

#include "token1.h"
