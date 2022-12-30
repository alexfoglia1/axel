#ifndef _UTILS_H_
#define _UTILS_H_

#include <stdint.h>
#include <kernel/arch/multiboot.h>

uint32_t* find_plaintext_in_memory(uint32_t* start_addr, uint32_t* limit, const char* plaintext);
uint64_t  print_multiboot_info(multiboot_info_t* mbr);
void __klog__(int com_port, const char* format, ...);

#endif
