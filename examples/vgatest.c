/* VGA graphics test for C86 */

#include <unistd.h>
#include "graphics.h"
#include "event.h"

int VGA = 1;        /* =1 for VGA 640x480, =0 for PAL 320x200 mode */

int main(int ac, char **av)
{
    struct event e;
    int c = 10;

    if (event_open() < 0)
      return 1;
    if (graphics_open(VGA? VGA_640x480x16: PAL_320x200x256) < 0)
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
            if (VGA)
                vga_drawpixel(e.x, e.y, c);
             else pal_drawpixel(e.x, e.y, c);
            break;
        case EVT_KEYCHAR:
            if (e.keychar == 'c') {
                if (VGA)
                    vga_fill_rect(0, 0, SCREENWIDTH-1, SCREENHEIGHT-1, 0);
               else pal_fill_rect(0, 0, SCREENWIDTH-1, SCREENHEIGHT-1, 0);
            }
            break;
        }
    }
    graphics_close();
    event_close();
    return 0;
}
