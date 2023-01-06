#ifndef _IDE_H
#define _IDE_H

#include <stdint.h>
#include <interrupts/isr.h> // for interrupt stack frame t


#define IDE_IRQ_INTERRUPT_NO 0x76


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void ide_irq_handler(interrupt_stack_frame_t* frame);

void ide_init(uint32_t bar0, uint32_t bar1, uint32_t bar2, uint32_t bar3, uint32_t bar4);
unsigned char ide_write_sectors(unsigned char drive, unsigned char numsects, unsigned int lba, unsigned short es, unsigned int edi);
unsigned char ide_read_sectors(unsigned char drive, unsigned char numsects, unsigned int lba, unsigned short es, unsigned int edi);

#endif
