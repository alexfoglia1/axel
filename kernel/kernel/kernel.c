#include <stdio.h>
#include <errno.h>
#include <stdbool.h>

#include <kernel/tty.h>
#include <kernel/multiboot.h>
#include <kernel/asm.h>
#include <kernel/gdt.h>
#include <kernel/idt.h>

#define MAJOR_V 0
#define MINOR_V 1
#define STAGE_V 'b'

void
kernel_main()
{
	errno = ENOERR;
	tty_init();

	tty_set_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	printf("Starting AXEL %d.%d-%c\n", MAJOR_V, MINOR_V, STAGE_V);

	cli();
	gdt_init();
	idt_init();
	sti();

	printf("Interrupt testing\n");
	int x = 10;
	int y = 9;
	int r = y / (x - y - 1);
	printf("%d\n", r);
	//asm volatile("int $0");
	printf("Interrupt raised\n");
}
