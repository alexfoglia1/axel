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

#endif
