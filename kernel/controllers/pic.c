#include <controllers/pic.h>
#include <controllers/com.h>
#include <controllers/ps2.h>

#include <drivers/pit.h>
#include <drivers/keyboard.h>

#include <kernel/arch/asm.h>
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
pic_init(uint8_t ps2_present)
{
    __slog__(COM1_PORT, "Initializing Programmable Interrupt Controller\n");

    // Masking IRQ 2,5,6,7 : Not yet implemented
    outb(PIC_MASTER_DATA_PORT, 0x04);
    outb(PIC_MASTER_DATA_PORT, 0x20);
    outb(PIC_MASTER_DATA_PORT, 0x40);
    outb(PIC_MASTER_DATA_PORT, 0x80);

    // Masking IRQ 8->15 : Not yet implemented
    outb(PIC_SLAVE_DATA_PORT, 0x01); 
    outb(PIC_SLAVE_DATA_PORT, 0x02); 
    outb(PIC_SLAVE_DATA_PORT, 0x04); 
    outb(PIC_SLAVE_DATA_PORT, 0x08);
    outb(PIC_SLAVE_DATA_PORT, 0x10);
    outb(PIC_SLAVE_DATA_PORT, 0x20);
    outb(PIC_SLAVE_DATA_PORT, 0x40);
    outb(PIC_SLAVE_DATA_PORT, 0x80);
    
    __slog__(COM1_PORT, "Masked not yet implemented IRQs\n");
}

void
pic_add_irq(uint8_t interrupt_no, void* isr)
{
    __slog__(COM1_PORT, "PIC is registering interrupt %b(0x%X)\n", interrupt_no, (uint32_t)isr);

    idt_add_entry(interrupt_no, isr, PRESENT | IRQ_GATE);
}
