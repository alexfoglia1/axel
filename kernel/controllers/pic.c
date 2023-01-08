#include <controllers/pic.h>
#include <controllers/com.h>
#include <controllers/ps2.h>

#include <drivers/pit.h>
#include <drivers/keyboard.h>

#include <kernel/arch/io.h>
#include <kernel/arch/gdt.h>
#include <kernel/arch/idt.h>

#include <common/utils.h>

#include <stdio.h>


void
pic_reset_master()
{
    outb(PIC_MASTER_CMD_PORT,  PIC_RESET_COMMAND);
    outb(PIC_MASTER_DATA_PORT, PIC_RESET_COMMAND);
}


void
pic_reset_slave()
{
    outb(PIC_SLAVE_CMD_PORT,  PIC_RESET_COMMAND);
    outb(PIC_SLAVE_DATA_PORT, PIC_RESET_COMMAND);
}

void
pic_add_irq(uint8_t interrupt_no, void* isr)
{
    __slog__(COM1_PORT, "PIC is registering IRQ with interrupt number 0x%X\n", interrupt_no);

    idt_add_entry(interrupt_no, isr, PRESENT | IRQ_GATE);
}
