#ifndef _KERNEL_TTY_H
#define _KERNEL_TTY_H

#include <kernel/arch/vga.h>
#include <stdio.h> // for sprintf (legal in both user and kernel, it does not make use of any system calls)

#define TTY_BUFFER_SIZE 512

// tty video management kernel-exposed functions
void tty_init(void);
void tty_set_color(enum vga_color fg, enum vga_color bg);
void tty_reset_column();
void tty_column_left();
void tty_column_right();
void tty_row_down();
void tty_row_up();

// tty print function kernel-exposed functions
// Kernel mode code should always use printk (or tty_putstring if no var args are present, but it is unnecessary since printk covers this case)
// User mode code shall use the stdio printf instead, becuase it involves a write syscall
void tty_putstring(const char* data);
extern char _tty_prompt_buffer[TTY_BUFFER_SIZE];

#define printk(format, ...) do {\
                                    sprintf(_tty_prompt_buffer, format, ##__VA_ARGS__);\
                                    tty_putstring(_tty_prompt_buffer);\
                                    memset(_tty_prompt_buffer, 0x00, TTY_BUFFER_SIZE);\
                                } while(0)

#endif
