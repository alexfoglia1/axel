#include <kernel/arch/idt.h>
#include <kernel/arch/asm.h>
#include <interrupts/isr.h>
#include <string.h>
#include <stdio.h>
#include <common/utils.h>


__attribute__((aligned(0x10))) 
struct idt_entry idt[IDT_SIZE]; // The real IDT pointed by LIDT


void
idt_init()
{
    for (int i = 0; i < IDT_SIZE; i++)
    {
        memset(&idt[i], 0x00, sizeof(struct idt_entry));
    }

    for (int i = 0; i < AVAILABLE_HANDLERS; i++)
    {
        /** isr_vector is declared in isr/isr.h and defined in arch/i386/isr.c **/
        idt_add_entry(i, isr_vector[i].handler, isr_vector[i].attributes);
    }

    store_idt(&idt);
}


void
idt_add_entry(uint8_t pos, void* isr, uint8_t flags)
{
    struct idt_entry* descriptor = &idt[pos];
 
    descriptor->isr_low        = (uint32_t)(isr) & 0xFFFF;
    descriptor->kernel_cs      = 0x08;
    descriptor->attributes     = flags;
    descriptor->isr_high       = (uint32_t)(isr) >> 16;
    descriptor->reserved       = 0;
}


void*
idt_get_entry(uint8_t pos)
{
    uint32_t addr = idt[pos].isr_low & 0xFFFF;
    addr |= (idt[pos].isr_high << 16);

    return (void*)(addr);
}

void*
idt_get_addr()
{
    return &idt[0];
}