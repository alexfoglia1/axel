#include <kernel/idt.h>
#include <kernel/isr.h>
#include <kernel/asm.h>
#include <string.h>
#include <stdio.h>
#include <common/utils.h>

__attribute__((aligned(0x10))) 
struct idt_entry idt[IDT_SIZE];


void
idt_init()
{
    printf("Initializing Interrupt Descriptor Table\n");
    for (int i = 0; i < IDT_SIZE; i++)
    {
        memset(&idt[i], 0x00, sizeof(struct idt_entry));
    }

    for (int i = 0; i < 32; i++)
    {
        if (0x10 == i)
        {
            idt_add_entry(i, &exception_handler_0x10, 0x8E);
        }
        else if (0x17 == i)
        {
            idt_add_entry(i, &exception_handler_0x17, 0x8E);
        }
        else
        {
            idt_add_entry(i, &exception_handler, 0x8E);
        }
    }

    store_idt(&idt);
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