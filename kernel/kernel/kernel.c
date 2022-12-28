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

//  Initializing GDT and IDT
	cli();
	gdt_init();
	idt_init();
	sti();
//  --------------------------

//  Initializing PIC IRQs
	pic_init();
//  ..........................

//  Detecting RSDT
	//printf("Detecting RSDT");
	//uint8_t* p_rsdt = 0xC00E0000; // absolute ?
	//char x = *p_rsdt;
	//printf("%c\n", x);

	//asm volatile("cli99: hlt");


//  Initializing PIT timer
	pit_init_timer();
//  --------------------------


//  Initializing PS/2 controller
    ps2_controller_init();
//  --------------------------


    while(1);
}
