#include <kernel/arch/io.h>

void
cli()
{
    asm volatile("cli");
}


void
sti()
{
    asm volatile("sti");
}


uint8_t
inb (int port_no)
{
  uint8_t data = 0x00;
  asm volatile ("inb %%dx, %%al" : "=a" (data) : "d" (port_no));

  return data;
}


void
outb (int port_no, int data)
{
  asm volatile ("outb %%al, %%dx" :: "a" (data), "d" (port_no));
}


uint16_t
inw (int port_no)
{
    uint16_t data = 0x00;
    asm volatile ("inw %%dx, %%ax" : "=a" (data) : "d" (port_no));

    return data;
}


void
outw (int port_no, int data)
{
    asm volatile ("outw %%ax, %%dx" :: "a" (data), "d" (port_no));
}


uint32_t
inl (int port_no)
{
    uint32_t data = 0x00;
    asm volatile ("inl %%edx, %%eax" : "=a" (data) : "d" (port_no));

    return data;
}


void
outl (int port_no, int data)
{
    asm volatile ("outl %%eax, %%edx" :: "a" (data), "d" (port_no));
}