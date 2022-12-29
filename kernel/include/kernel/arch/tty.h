#ifndef _KERNEL_TTY_H
#define _KERNEL_TTY_H

#include <stddef.h>
#include "vga.h"

void tty_init(void);
void tty_set_color(enum vga_color fg, enum vga_color bg);
void tty_scroll(void);
void tty_putchar(char c);
void tty_putchars(const char* data, size_t size);
void tty_putstring(const char* data);
void tty_row_up(void);
void tty_row_down(void);
void tty_column_right(void);
void tty_column_left(void);
void tty_reset_column(void);
void tty_update_cursor_position(void);
#endif
