#include <kernel/asm.h>
#include <kernel/gdt.h>
#include <kernel/idt.h>

#include <common/utils.h>
#include <stdio.h>

void
cli()
{
    asm volatile("cli");
    
    printf("Interrupts disabled\n");
}


void
sti()
{
    asm volatile("sti");

    printf("Interrupts enabled\n");
}


void
store_gdt(void* gdt_addr, uint16_t limit, int32_t code, int32_t data)
{
	struct gdt_reg gdtr;
	gdtr.limit = limit;
	gdtr.base = p_32_to_uint_64(gdt_addr);

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

    printf("Stored GDT at 0x%X\n", p_32_to_uint_64(gdt_addr));
}


void
store_idt(void* idt_addr)
{
	struct idtr idt_r;
    idt_r.base = (uintptr_t)idt_addr;
    idt_r.limit = (uint16_t)sizeof(struct idt_entry) * IDT_SIZE - 1;

	asm volatile ("lidt %0" : : "m"(idt_r)); // load the new IDT
    sti();

	printf("Stored IDT at 0x%X\n", p_32_to_uint_64(idt_addr));
}