#ifndef _IDT_H
#define _IDT_H

#include <stdint.h>
#include <kernel/arch/asm.h>

#define IDT_ENTRIES 256

#define IRQ_TO_INT_NO(IRQ)(IRQ + 32)

#define PRESENT 0x80
#define TSK_GATE 0x5
#define IRQ_GATE 0xE
#define TRP_GATE 0xF

// These are the interrupt numbers associated to system calls
#define SYSCALL_INT_NO_READ  80
#define SYSCALL_INT_NO_WRITE 81
#define SYSCALL_INT_NO_FORK  82

typedef struct idt_entry
{
    uint16_t    isr_low;      // The lower 16 bits of the ISR's address
    uint16_t    kernel_cs;    // The GDT segment selector that the CPU will load into CS before calling the ISR
    uint8_t     reserved;     // Set to zero
    uint8_t     attributes;   // Type and attributes; see the IDT page
    uint16_t    isr_high;     // The higher 16 bits of the ISR's address
} __attribute__((packed)) idt_entry_t;


typedef struct idtr
{
    uint16_t	limit;
    uint32_t	base;
} __attribute__((packed)) idt_ptr_t;


void  idt_init();
void  idt_add_entry(uint8_t pos, uint32_t isr, uint8_t flags);

#endif
