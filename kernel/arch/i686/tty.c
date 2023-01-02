#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <string.h>

#include <kernel/arch/tty.h>
#include <kernel/arch/vga.h>
#include <kernel/arch/io.h>


static const size_t 	VGA_WIDTH = 80;
static const size_t 	VGA_HEIGHT = 25;
static uint16_t* const 	VGA_MEMORY = (uint16_t*) 0xB8000;

static size_t 	 _row;
static size_t 	 _column;
static uint8_t 	 _color;
static uint16_t* _tty;
static size_t	 _tabulations;
static size_t	 _tabulation_width;

void
tty_init(void)
{
	_row = 0;
	_column = 0;
	_color = vga_entry_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	_tty = VGA_MEMORY;
	_tabulations = 8;
	_tabulation_width = VGA_WIDTH / _tabulations; //10 tabulations spaces for the moment
	
	for (size_t y = 0; y < VGA_HEIGHT; y++)
	{
		for (size_t x = 0; x < VGA_WIDTH; x++)
		{
			const size_t index = y * VGA_WIDTH + x;
			_tty[index] = vga_entry(' ', _color);
		}
	}
}


void
tty_set_color(enum vga_color fg, enum vga_color bg)
{
	_color = vga_entry_color(fg, bg);
}


void
tty_scroll()
{
	for (size_t y = 0; y < VGA_HEIGHT - 1; y++)
	{
		int current_row_offset = y 		* VGA_WIDTH;
		int target_row_offset = (y + 1) * VGA_WIDTH;
			
		for (size_t x = 0; x < VGA_WIDTH; x++)
		{
			_tty[current_row_offset + x] = _tty[target_row_offset + x];
		} 
	}

	for (size_t x = 0; x < VGA_WIDTH; x++)
	{
		_tty[(VGA_HEIGHT - 1) * VGA_WIDTH + x] = vga_entry(' ', _color);
	}
}


void
tty_putchar(char c)
{
	if ('\n' == c)
	{
		_column = 0;
		_row += 1;

		if (VGA_HEIGHT == _row)
		{
			tty_scroll();
			_row = VGA_HEIGHT - 1;
		}
	}
	else if ('\r' == c)
	{
		_column = 0;
	}
	else if ('\t' == c)
	{
		size_t current_tabulation = _column / _tabulation_width;
		_column = (1 + current_tabulation) * _tabulation_width;
	}
	else if ('\b' == c)
	{
		if (0 == _column)
		{
			if (0 == _row)
			{
				_row = 0;
			}
			else
			{
				_row -= 1;
			}
			
			_column = VGA_WIDTH - 1;
		}
		else
		{
			_column -= 1;
		}

		const size_t index = _row * VGA_WIDTH + _column;
		_tty[index] = ' ';
	}
	else
	{
		const size_t index = _row * VGA_WIDTH + _column;
		_tty[index] = vga_entry(c, _color);

		if (++_column == VGA_WIDTH)
		{
			_column = 0;
			if (VGA_HEIGHT == ++_row)
			{
				_row = VGA_HEIGHT - 1;

				tty_scroll();
			}
		}
	}

	tty_update_cursor_position();
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
tty_row_up(void)
{
	if (_row > 0)
	{
		_row -= 1;
	}
	tty_update_cursor_position();
}


void
tty_row_down(void)
{
	if (_row < VGA_HEIGHT)
	{
		_row += 1;
	}
	tty_update_cursor_position();
}


void
tty_column_right(void)
{
	if (_column < VGA_WIDTH)
	{
		_column += 1;
	}
	tty_update_cursor_position();
}


void
tty_column_left(void)
{
	if (_column > 0)
	{
		_column -= 1;
	}
	tty_update_cursor_position();
}


void tty_reset_column(void)
{
	_column = 0;

	tty_update_cursor_position();
}


void
tty_update_cursor_position(void)
{
	const size_t index = _row * VGA_WIDTH + _column;
	outb(0x3D4, 0x0F);
	outb(0x3D5, (uint8_t) (index & 0xFF));
	outb(0x3D4, 0x0E);
	outb(0x3D5, (uint8_t) ((index >> 8) & 0xFF));
}

