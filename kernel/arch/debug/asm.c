#include <kernel/asm.h>


void
cli()
{
    return;
}


void
sti()
{
    return;
}


uint8_t
inb(int port_no)
{
    return 0;
}


void
outb(int port_no, int data)
{
    return;
}


void
store_gdt(void* gdt_addr, uint16_t limit, int32_t code, int32_t data)
{
    return;
}
