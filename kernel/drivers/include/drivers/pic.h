#ifndef _PIC_H
#define _PIC_H

#define PIC_MASTER_CMD_PORT   0x20
#define PIC_MASTER_DATA_PORT  0x21
#define PIC_SLAVE_CMD_PORT    0xA0
#define PIC_SLAVE_DATA_PORT   0xA1

#define PIC_RESET_COMMAND     0x20

#define PIC_ICW1_ICW4	0x01		/* ICW4 (not) needed */
#define PIC_ICW1_SINGLE	0x02		/* Single (cascade) mode */
#define PIC_ICW1_INTERVAL4	0x04		/* Call address interval 4 (8) */
#define PIC_ICW1_LEVEL	0x08		/* Level triggered (edge) mode */
#define PIC_ICW1_INIT	0x10		/* Initialization - required! */
 
#define PIC_ICW4_8086	0x01		/* 8086/88 (MCS-80/85) mode */
#define PIC_ICW4_AUTO	0x02		/* Auto (normal) EOI */
#define PIC_ICW4_BUF_SLAVE	0x08		/* Buffered mode/slave */
#define PIC_ICW4_BUF_MASTER	0x0C		/* Buffered mode/master */
#define PIC_ICW4_SFNM	0x10		/* Special fully nested (not) */
 

#define PIC_EOI               0x20 // End of Interrupt


void pic_reset_master();
void pic_reset_slave();
void pic_init();

#endif