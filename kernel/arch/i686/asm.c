#include <kernel/asm.h>
#include <kernel/gdt.h>
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

    printf("Stored GDT table at 0x%X\n", p_32_to_uint_64(gdt_addr));
}