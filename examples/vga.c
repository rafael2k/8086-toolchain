#define VGA_256_COLOR_MODE  0x13      /* use to set 256-color mode. */
#define TEXT_MODE           0x03      /* use to set 80x25 text mode. */

#define SCREEN_WIDTH        320       /* width in pixels of mode 0x13 */
#define SCREEN_HEIGHT       200       /* height in pixels of mode 0x13 */
#define NUM_COLORS          256       /* number of colors in mode 0x13 */

unsigned int sleep(unsigned int seconds);

/**************************************************************************
 *  set_mode                                                              *
 *     Sets the video mode.                                               *
 **************************************************************************/

void set_mode(int mode)
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

/**************************************************************************
 *  plot_pixel                                                            *
 *    Plot a pixel by directly writing to video memory, with no           *
 *    multiplication.                                                     *
 **************************************************************************/

void writevid(unsigned int offset, unsigned int val)
{
    asm(
        "push   ds\n"
        "push   bx\n"
        "mov    ax,#0xA000\n"
        "mov    ds,ax\n"
        "mov    bx,[bp+4]\n"    /* offset */
        "mov    al,[bp+6]\n"    /* val */
        "mov    [bx],al\n"
        "pop    bx\n"
        "pop    ds\n"
    );
}

void plot_pixel(int x,int y,unsigned int color)
{
     /*  y*320 = y*256 + y*64 = y*2^8 + y*2^6   */
    int offset = (y<<8)+(y<<6)+x;
    writevid(offset, color);
}

int main()
{
  set_mode(VGA_256_COLOR_MODE);       /* set the video mode to 256 colors 320 x 200 */
								 
  for (int i=0;i<60;i++)
  	plot_pixel(100+i,100,5);

  for (int i=0;i<60;i++)
        plot_pixel(100,100+i,0xA);

  sleep(3);
  
  set_mode(TEXT_MODE);                /* set the video mode back to text mode. */

  return 0;
}