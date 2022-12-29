#include <kernel/gdt.h>
#include <kernel/asm.h>
#include <string.h>
#include <stdio.h>

struct gdt_entry gdt_table[GDT_SIZE];


void
gdt_init()
{
    for (int i = 0; i < GDT_SIZE; i++)
    {
        memset(&gdt_table[i], 0x00, sizeof(struct gdt_entry));
    }

	gdt_add_entry(0,0,0,0,0);
	gdt_add_entry(1, 0x00000000, 0x000FFFFF, PRESENT|KERNEL|CODE|0x0A, GRANULARITY|SZBITS);
	gdt_add_entry(2, 0x00000000, 0x000FFFFF, PRESENT|KERNEL|DATA|0x02, GRANULARITY|SZBITS);

	store_gdt(gdt_table, 0xFFFF, 1, 2);	
}


void
gdt_add_entry(int32_t pos, uint32_t base, uint32_t limit, uint8_t opt_1, uint8_t opt_2)
{
	gdt_table[pos].lim_low   = (uint16_t) (limit & 0xFFFF);
	gdt_table[pos].base_low  = (uint16_t) (base  & 0xFFFF);
	gdt_table[pos].base      = (uint8_t)  ((base >> 16)  & 0xFF);
	gdt_table[pos].opt_1     = opt_1;
	gdt_table[pos].opt_2     = opt_2 | (uint8_t) ((limit >> 16) & 0x0F);
	gdt_table[pos].base_high = (uint8_t)((base >> 24) & 0xFF);
}

