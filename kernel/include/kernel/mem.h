#ifndef _MEM_H
#define _MEM_H

#include <kernel/multiboot.h>
#include <stdint.h>

typedef enum
{
    AVAILABLE = 0x00,
    RESERVED,
    ACPI_RECLAIMABLE,
    NVS,
    BADRAM,
    UNKNOWN
} memory_type_t;

typedef struct
{
    uint32_t* start_addr;
    uint32_t length;
    memory_type_t type;
} kern_memory_map_entry_t;

typedef struct
{
    kern_memory_map_entry_t* entries;
    uint8_t  validity_flag;
    uint32_t n_entries;
} kern_memory_map_t;

kern_memory_map_t parse_multiboot_header(multiboot_info_t* mbd);


#endif