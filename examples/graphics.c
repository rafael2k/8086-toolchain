/*
 * VGA/PAL Graphics for C86
 *  Supports 16-color VGA and 256 color PAL modes
 *
 * 1 Feb 2025 Greg Haerr
 */

#include <stdio.h>
#include "graphics.h"

int SCREENWIDTH;                /* initialized by graphics_open */
int SCREENHEIGHT;
int VGA;

/* use BIOS to set video mode */
static void set_mode(int mode)
{
    asm(
        "push   si\n"
        "push   di\n"
        "push   ds\n"
        "push   es\n"
        "mov    ax,[bp+4]\n"    /* AH=0, AL=mode */
        "int    0x10\n"
        "pop    es\n"
        "pop    ds\n"
        "pop    di\n"
        "pop    si\n"
    );
}

int graphics_open(int mode)
{
    switch (mode) {
    case VGA_640x350x16:
        SCREENWIDTH = 640;
        SCREENHEIGHT = 350;
        set_mode(mode);
        vga_init();
        VGA = 1;
        break;
    case VGA_640x480x16:
        SCREENWIDTH = 640;
        SCREENHEIGHT = 480;
        set_mode(mode);
        vga_init();
        VGA = 1;
        break;
    case PAL_320x200x256:
        SCREENWIDTH = 320;
        SCREENHEIGHT = 200;
        set_mode(mode);
        VGA = 0;
        break;
    default:
        printf("Unsupported mode: %02x\n", mode);
        return -1;
    }
    return 0;
}

void graphics_close(void)
{
    set_mode(TEXT_MODE);
}

/* PAL write color byte at video offset */
static void pal_writevid(unsigned int offset, int c)
{
    asm(
        "push   ds\n"
        "push   bx\n"
        "mov    ax,#0xA000\n"
        "mov    ds,ax\n"
        "mov    bx,[bp+4]\n"    /* offset */
        "mov    al,[bp+6]\n"    /* color */
        "mov    [bx],al\n"
        "pop    bx\n"
        "pop    ds\n"
    );
}

/* PAL draw a pixel at x, y with 8-bit color c */
void pal_drawpixel(int x,int y, int color)
{
    pal_writevid(y*SCREENWIDTH + x, color);
}

/* PAL fill rectangle with color c */
void pal_fill_rect(int x1, int y1, int x2, int y2, int c)
{
    int x, offset;

    while(y1 <= y2) {
        offset = y1*SCREENWIDTH + x1;
        for(x = x1; x <= x2; x++)
            pal_writevid(offset++, c);
        y1++;
    }
}

/* VGA fill rectangle with color c */
void vga_fill_rect(int x1, int y1, int x2, int y2, int c)
{
    while(y1 <= y2)
        vga_drawhline(x1, x2, y1++, c);
}

/* general routines */
void drawpixel(int x,int y, int color)
{
    if (VGA)
        vga_drawpixel(x, y, color);
    else pal_drawpixel(x, y, color);
}

void fill_rect(int x1, int y1, int x2, int y2, int c)
{
    if (VGA)
        vga_fill_rect(x1, y1, x2, y2, c);
    else pal_fill_rect(x1, y1, x2, y2, c);
}
