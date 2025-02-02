/* VGA graphics test for C86 */
/* usage: vgatest [mode] */

#include <unistd.h>
#include <stdlib.h>
#include "graphics.h"

int mode = VGA_640x480x16;      /* mode 12h */

int main(int ac, char **av)
{
    int x, y, c, i, w, limit;

    if (ac > 1)
        mode = strtoi(av[1], 16);

    if (graphics_open(mode) < 0)
        return 1;

    /* draw filled boxes */
    x = 10; y = 10;
    w = VGA? 150: 80;
    c = 3;
    limit = VGA? 16: 8;
    for (i=0; i<limit; i++, c++, x+=15, y+=15)
        fill_rect(x, y, x+w, y+w, c);

    read(0, (char *)&c, 1);
    graphics_close();
    return 0;
}
