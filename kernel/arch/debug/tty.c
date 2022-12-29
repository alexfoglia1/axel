#include <kernel/tty.h>
#include <string.h>

#define VGA_WIDTH    80
#define VGA_HEIGHT   25

char _tty_stub[VGA_HEIGHT][VGA_WIDTH];
enum vga_color _fg;
enum vga_color _bg;
int _r;
int _c;


void
tty_init(void)
{
    for (int y = 0; y < VGA_HEIGHT; y++)
    {
        for (int x = 0; x < VGA_WIDTH; x++)
        {
            _tty_stub[y][x] = ' ';
        }
    }

    _r = 0;
    _c = 0;
}


void
tty_set_color(enum vga_color fg, enum vga_color bg)
{
    _fg = fg;
    _bg = bg;
}


void
tty_scroll(void)
{
    for (int row = 1; row < VGA_HEIGHT; row++)
    {
        for (int x = 0; x < VGA_WIDTH; x++)
        {
            _tty_stub[row - 1][x] = _tty_stub[row][x];
        }
    }

    for (int x = 0; x < VGA_WIDTH; x++)
    {
        _tty_stub[VGA_HEIGHT - 1][x] = ' ';
    }
}


void
tty_putchar(char c)
{
    _tty_stub[_r][_c] = c;
    _c += 1;

    if (VGA_WIDTH == _c)
    {
        _c = 0;
        _r += 1;

        if (VGA_HEIGHT == _r)
        {
            tty_scroll();
            _r = VGA_HEIGHT - 1;
        }

    }
}


void
tty_putchars(const char* data, size_t size)
{
    for (size_t i = 0; i < size; i++)
    {
        tty_putchar(data[i]);
    }
}


void
tty_putstring(const char* data)
{
    tty_putchars(data, strlen(data));
}


void
tty_row_up()
{
    if (_r > 0)
    {
        _r -= 1;
    }
}


void
tty_row_down()
{
    if (_r < VGA_HEIGHT - 1)
    {
        _r += 1;
    }
}


void
tty_column_right()
{
    if (_c < VGA_WIDTH - 1)
    {
        _c += 1;
    }
}


void
tty_column_left()
{
    if (_c > 0)
    {
        _c -= 1;
    }
}


void
tty_reset_column()
{
    _c = 0;
}
