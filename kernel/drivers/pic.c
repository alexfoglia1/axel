#include <drivers/pic.h>
#include <kernel/asm.h>


void
reset_pic_master()
{
    outb(PIC_MASTER_CMD_PORT, PIC_RESET_COMMAND);
}


void
reset_pic_slave()
{
    outb(PIC_SLAVE_CMD_PORT, PIC_RESET_COMMAND);
}
