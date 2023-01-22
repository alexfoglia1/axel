#ifndef _PIC_H
#define _PIC_H

#include <stdint.h>

#define PIC_MASTER_CMD_PORT   0x20
#define PIC_MASTER_DATA_PORT  0x21
#define PIC_SLAVE_CMD_PORT    0xA0
#define PIC_SLAVE_DATA_PORT   0xA1

#define PIC_RESET_COMMAND     0x20
#define PIC_IRQ_SLV_THRESHOLD 0x28 // Higher or equals interrupt numbers are raised by the daisy-chained slave PIC
 
#define PIC_EOI               0x20 // End of Interrupt

void pic_remap();
void pic_reset_master();
void pic_reset_slave();

#endif