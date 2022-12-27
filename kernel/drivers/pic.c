#include <drivers/pic.h>
#include <drivers/pit.h>
#include <kernel/asm.h>
#include <kernel/gdt.h>
#include <kernel/idt.h>


void
pic_reset_master()
{
    outb(PIC_MASTER_CMD_PORT,   PIC_RESET_COMMAND);
    outb(PIC_MASTER_CMD_PORT_2, PIC_RESET_COMMAND);
}


void
pic_reset_slave()
{
    outb(PIC_SLAVE_CMD_PORT,   PIC_RESET_COMMAND);
    outb(PIC_SLAVE_CMD_PORT_2, PIC_RESET_COMMAND);
}


void
pic_init_irq()
{
    cli();

    // PIT IRQ ENABLING
    idt_add_entry(PIT_IRQ_INTERRUPT, &pit_irq0_handler, PRESENT | IRQ_GATE);
    // TODO keyboard and other devices

    sti();              
}
