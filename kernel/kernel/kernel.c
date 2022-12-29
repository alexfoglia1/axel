#include <stdio.h>
#include <errno.h>
#include <stdbool.h>

#include <kernel/tty.h>
#include <kernel/multiboot.h>
#include <kernel/asm.h>
#include <kernel/gdt.h>
#include <kernel/idt.h>
#include <isr/isr.h>
#include <drivers/pic.h>
#include <drivers/pit.h>
#include <drivers/ps2.h>
#include <drivers/rsdp.h>
#include <common/utils.h>


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
//  Initializing GDT and IDT
	gdt_init();
	idt_init();
//  --------------------------

//  Detecting RSDP
	rsdp_find();
//  --------------------------

//  Initializing PS/2 controller
    ps2_controller_init(rsdp_get_rsdt_address());
//  --------------------------

//  Initializing PIC IRQs
	pic_init(ps2_controller_found());
//  ..........................

//  Initializing PIT timer
	pit_init_timer();
//  --------------------------
	sti();

	while (1);
}
