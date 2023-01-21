#ifndef _ASM_H
#define _ASM_H
// Header containing the assembly routines signatures

#include <stdint.h>

uint8_t cpuid_supported();
uint32_t read_eip();
void flush_tlb();
void enable_paging();
void copy_page_physical(uint32_t src, uint32_t dst);
void load_page_directory(uint32_t page_directory);
void context_switch(uint32_t eip, uint32_t esp, uint32_t ebp, uint32_t page_directory);
void syscall_interface(uint32_t syscall_int_no, uint32_t syscall_type, uint32_t count, uint32_t buffer, uint32_t extra);


#endif
