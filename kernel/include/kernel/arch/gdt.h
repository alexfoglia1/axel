#ifndef _GDT_H
#define _GDT_H

#include <stdint.h>

#define GDT_SIZE 10

/** opt_1 argument **/
#define MEMORY  0x00
#define KERNEL  0x00
#define NPRSNT  0x00
#define RING_1  0x01
#define RING_2  0x02
#define USR     0x03
#define CODE    0x10
#define DATA    0x10
#define PRESENT 0x80

/** opt_2 argument **/
#define GRANULARITY 0x80
#define SZBITS      0x40

/** Type **/
#define RDONLY  0x00
#define RDONLYA 0x01
#define RWRITE  0x02
#define RWRITEA 0x03


struct gdt_entry
{
	uint16_t lim_low;
	uint16_t base_low; 
	uint8_t  base;
	uint8_t  opt_1;
    uint8_t  opt_2;
	uint8_t  base_high;
} __attribute__((packed));


struct gdt_reg
{
	uint16_t limit;
	uint32_t base;
} __attribute__((packed));


void gdt_add_entry(int32_t pos, uint32_t base, uint32_t limit, uint8_t opt_1, uint8_t opt_2);
void gdt_init();
void store_gdt(void* gdt_addr, uint16_t limit, int32_t code, int32_t data);

#endif