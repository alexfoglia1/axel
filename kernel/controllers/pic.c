#include <controllers/pic.h>
#include <kernel/arch/io.h>


void
pic_remap()
{
    outb(PIC_MASTER_CMD_PORT,  0x11);
    outb(PIC_SLAVE_CMD_PORT,   0x11);
    outb(PIC_MASTER_DATA_PORT, 0x20);
    outb(PIC_SLAVE_DATA_PORT,  0x28);
    outb(PIC_MASTER_DATA_PORT, 0x04);
    outb(PIC_SLAVE_DATA_PORT,  0x02);
    outb(PIC_MASTER_DATA_PORT, 0x01);
    outb(PIC_SLAVE_DATA_PORT,  0x01);
    outb(PIC_MASTER_DATA_PORT, 0x0);
    outb(PIC_SLAVE_DATA_PORT,  0x0);
}


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