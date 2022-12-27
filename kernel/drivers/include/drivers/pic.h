#ifndef _PIC_H
#define _PIC_H

#define PIC_MASTER_CMD_PORT 0x20
#define PIC_SLAVE_CMD_PORT  0xA0

#define PIC_RESET_COMMAND   0x20


void reset_pic_master();
void reset_pic_slave();

#endif