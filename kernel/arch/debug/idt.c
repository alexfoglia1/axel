#include <kernel/idt.h>
#include <isr/isr.h>
#include <string.h>


void
idt_init()
{
    return;
}


void
idt_add_entry(uint8_t pos, void* isr, uint8_t flags)
{
    return;
}

void*
idt_get_entry(uint8_t pos)
{
    return 0;
}
