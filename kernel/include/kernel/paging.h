#ifndef _PAGING_H
#define _PAGING_H

#include <kernel/arch/multiboot.h>

#include <interrupts/isr.h>

#include <stdint.h>

#define PAGE_DIRECTORY_VADDR    0xFFBFF000
#define PAGE_TABLE_VADDR        0xFFC00000
#define PAGE_TABLE_SIZE         0x00001000
#define PAGE_TABLE_ENTRY_SIZE   0x00000400
#define PAGE_MEM_DIM            0x1000

#define PAGING_STACK_ADDR       0xFF000000

#define PAGE_PRESENT            0x00000001
#define PAGE_WRITE              0x00000002
#define PAGE_USER               0x00000004
#define PAGE_MASK               0xFFFFF000

#define PAGE_FAULT_INT          14

void paging_init(uint32_t physical_start_addr);
void paging_enable();
uint32_t* paging_alloc_page();
void paging_map(uint32_t va, uint32_t pa, uint32_t flags);
void paging_map_memory(multiboot_info_t* mbd);
uint32_t* virtual_to_physical(uint32_t* va);
uint8_t paging_is_active();

#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void paging_fault_handler(interrupt_stack_frame_t* frame);


#endif
