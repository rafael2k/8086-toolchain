/* paint - super simple VGA and event tester for C86 */

#include <unistd.h>
#include <stdlib.h>
#include "graphics.h"
#include "event.h"

int mode = VGA_640x480x16;      /* mode 12h */

int main(int ac, char **av)
{
    struct event e;
    int c = 10;

    if (ac > 1)
        mode = strtoi(av[1], 16);

    if (event_open() < 0)
        return 1;
    if (graphics_open(mode) < 0)
        return 1;

    while (event_wait_timeout(&e, -1)) {
        switch (e.type) {
        case EVT_MOUSEDOWN:
            c += 2;
            break;
        case EVT_MOUSEUP:
            c--;
            break;
        case EVT_MOUSEMOVE:
            drawpixel(e.x, e.y, c);
            break;
        case EVT_KEYCHAR:
            if (e.keychar == 'c')
                fill_rect(0, 0, SCREENWIDTH-1, SCREENHEIGHT-1, 0);
            break;
        }
    }
    graphics_close();
    event_close();
    return 0;
}
