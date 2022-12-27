#include <kernel/idt.h>
#include <isr/isr.h>
#include <kernel/asm.h>
#include <string.h>
#include <stdio.h>
#include <common/utils.h>

__attribute__((aligned(0x10))) 
struct idt_entry idt[IDT_SIZE];


void
idt_init()
{
    for (int i = 0; i < IDT_SIZE; i++)
    {
        memset(&idt[i], 0x00, sizeof(struct idt_entry));
    }

    idt_add_entry(0, &divide_by_zero_exception, 0x8E);
    for (int i = 1; i < 32; i++)
    {
        
        idt_add_entry(i, &exception_handler, 0x8E);
    }

    store_idt(&idt);

    printf("Interrupt Descriptor Table initialized\n");
}


void
idt_add_entry(uint8_t pos, void* isr, uint8_t flags)
{
    struct idt_entry* descriptor = &idt[pos];
 
    descriptor->isr_low        = (uint32_t)isr & 0xFFFF;
    descriptor->kernel_cs      = 0x08;
    descriptor->attributes     = flags;
    descriptor->isr_high       = (uint32_t)isr >> 16;
    descriptor->reserved       = 0;
}