#include <drivers/pic.h>
#include <drivers/pit.h>
#include <drivers/ps2.h>
#include <kernel/arch/asm.h>
#include <kernel/arch/gdt.h>
#include <kernel/arch/idt.h>
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
    // Masking IRQ 2->7 : Not yet implemented
    outb(PIC_MASTER_DATA_PORT, 0x04); 
    outb(PIC_MASTER_DATA_PORT, 0x08);
    outb(PIC_MASTER_DATA_PORT, 0x16);
    outb(PIC_MASTER_DATA_PORT, 0x32);
    outb(PIC_MASTER_DATA_PORT, 0x64);
    outb(PIC_MASTER_DATA_PORT, 0x128);

    // Masking IRQ 8->15 : Not yet implemented
    outb(PIC_SLAVE_DATA_PORT, 0x01); 
    outb(PIC_SLAVE_DATA_PORT, 0x02); 
    outb(PIC_SLAVE_DATA_PORT, 0x04); 
    outb(PIC_SLAVE_DATA_PORT, 0x08);
    outb(PIC_SLAVE_DATA_PORT, 0x16);
    outb(PIC_SLAVE_DATA_PORT, 0x32);
    outb(PIC_SLAVE_DATA_PORT, 0x64);
    outb(PIC_SLAVE_DATA_PORT, 0x128);

    // PIT IRQ ENABLING (IRQ0)
    idt_add_entry(PIT_IRQ_INTERRUPT, &pit_irq0_handler, PRESENT | IRQ_GATE);
    // KEYBOARD IRQ ENABLING (IRQ1)

    if (1) //(ps2_present) potrebbe essere USB...
    {
        idt_add_entry(PS2_KEY_INTERRUPT, &ps2_irq1_keyboard_handler, PRESENT | IRQ_GATE);
        //TODO mouse
    }
    else
    {
        outb(PIC_MASTER_DATA_PORT, 0x01); // Masking IRQ1 : Keyboard
        //TODO mask mouse 
    }
    
    // TODO other devices
}
