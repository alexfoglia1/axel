#ifndef _PIC_H
#define _PIC_H

#define PIC_MASTER_CMD_PORT   0x20
#define PIC_MASTER_CMD_PORT_2 0x21
#define PIC_SLAVE_CMD_PORT    0xA0
#define PIC_SLAVE_CMD_PORT_2  0xA1

#define PIC_RESET_COMMAND     0x20

#define PIC_ICW_1             0x11
#define PIC_ICW_2_M           0x20
#define PIC_ICW_2_S           0x28
#define PIC_ICW_3_M           0x04
#define PIC_ICW_3_S           0x02
#define PIC_ICW_4             0x01

#define PIC_EOI               0x20


void pic_reset_master();
void pic_reset_slave();
void pic_init_irq();

#endif