#include <kernel/arch/asm.h>


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


int
cpuid_supported()
{
    return 1; // Dev. machine is x86_64 : cpuid is supported
}


void
mmu_enable_paging(uint32_t* pd)
{
    return;
}
