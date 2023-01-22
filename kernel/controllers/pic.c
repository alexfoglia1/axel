#include <controllers/pic.h>
#include <kernel/arch/io.h>


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