/* event testing for C86 */
#include <stdio.h>
#include <stdlib.h>
#include "event.h"

int main(int ac, char **av)
{
    struct event e;

    if (event_open() < 0)
        exit(1);

    while (event_wait_timeout(&e, -1)) {
        switch (e.type) {
        case EVT_NONE:
            printf("none\n");
            break;
        case EVT_TIMEOUT:
            printf("timeout\n");
            break;
        case EVT_KEYCHAR:
            printf("char %c\n", e.keychar);
            break;
        case EVT_MOUSEDOWN:
            printf("  down   x:%4d, y:%4d, b:%2d\n", e.x, e.y, e.button);
            break;
        case EVT_MOUSEUP:
            printf("  up     x:%4d, y:%4d, b:%2d\n", e.x, e.y, e.button);
            break;
        case EVT_MOUSEMOVE:
            printf("  move   x:%4d, y:%4d, b:%2d\n", e.x, e.y, e.button);
            break;
        case EVT_MOUSEWHEEL:
            printf("  scroll x:%4d, y:%4d, b:%2d\n", e.x, e.y, e.button);
            break;
        default:
            printf("unknown type %d\n", e.type);
            break;
        }
    }
    event_close();
    return 0;
}
