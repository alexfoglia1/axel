#include <kernel/arch/asm.h>
#include <kernel/arch/gdt.h>
#include <kernel/arch/idt.h>

#include <common/utils.h>

#include <stdio.h>

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
outw(int port_no, int data)
{
	asm volatile ("outw %%ax, %%dx" :: "a" (data), "d" (port_no));
}


void
store_gdt(void* gdt_addr, uint16_t limit, int32_t code, int32_t data)
{
	struct gdt_reg gdtr;
	gdtr.limit = limit;
	gdtr.base = (uint32_t)(gdt_addr);

	code = code << 3;
	data = data << 3;

	asm volatile("lgdt %0\n"
				"pushl %1\n"
				"pushl $CSpoint\n"
				"lret\n"
				"CSpoint:\n"
				"mov %2,%%eax\n"
				"mov %%ax,%%ds\n"
				"mov %%ax,%%es\n"
				"mov %%ax,%%fs\n"
				"mov %%ax,%%gs\n"
				"mov %%ax,%%ss\n"
				: 
				: "g"  (gdtr), "r" (code), "r" (data));
}


void
store_idt(void* idt_addr)
{
	struct idtr idt_r;
    idt_r.base = (uintptr_t)idt_addr;
    idt_r.limit = (uint16_t)sizeof(struct idt_entry) * IDT_SIZE - 1;

	asm volatile ("lidt %0" : : "m"(idt_r)); // load the new IDT
}


void
io_wait()
{
	extern void asm_io_wait();
    asm_io_wait();
}


void
mmu_enable_paging(uint32_t* pd)
{
	asm volatile ("mov %0, %%cr3" : : "r" (pd));
    uint32_t cr0;
    asm volatile ("mov %%cr0, %0" : "=r" (cr0));
    cr0 |= 0x80000000;
    asm volatile ("mov %0, %%cr0" : : "r" (cr0));
}


int
cpuid_supported()
{
	extern int asm_cpuid_supported();
	return asm_cpuid_supported();
}
