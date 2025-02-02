/* graphics.h */

/* supported graphics modes in graphics_open */
#define VGA_640x480x16      0x12        /* 640x480 16 color/4bpp */
#define PAL_320x200x256     0x13        /* 320x200 256 color/8bpp */
#define TEXT_MODE           0x03        /* 80x25 text mode */

extern int SCREENWIDTH;                 /* set by graphics_open */
extern int SCREENHEIGHT;

/* start/stop graphics mode */
int graphics_open(int mode);
void graphics_close(void);

/* VGA 16 color, 4bpp routines */
void vga_init(void);
void vga_drawpixel(int x, int y, int c);
void vga_drawhline(int x1, int x2, int y, int c);
void vga_drawvline(int x, int y1, int y2, int c);
int vga_readpixel(int x, int y);
void vga_fill_rect(int x1, int y1, int x2, int y2, int c);

/* PAL 256 color 8bpp routines */
void pal_drawpixel(int x,int y, int color);
void pal_fill_rect(int x1, int y1, int x2, int y2, int c);
