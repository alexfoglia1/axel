#ifndef _IDT_H
#define _IDT_H

#define IDT_SIZE 256

#include <stdint.h>

struct idt_entry
{
    uint16_t    isr_low;      // The lower 16 bits of the ISR's address
    uint16_t    kernel_cs;    // The GDT segment selector that the CPU will load into CS before calling the ISR
    uint8_t     reserved;     // Set to zero
    uint8_t     attributes;   // Type and attributes; see the IDT page
    uint16_t    isr_high;     // The higher 16 bits of the ISR's address
} __attribute__((packed));


struct idtr
{
    uint16_t	limit;
    uint32_t	base;
} __attribute__((packed));


void  idt_init();
void  idt_add_entry(uint8_t pos, void* isr, uint8_t flags);
void* idt_get_entry(uint8_t pos);
void* idt_get_addr();
void  store_idt(void* idt_addr);

#endif
