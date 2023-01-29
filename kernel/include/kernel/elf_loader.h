#ifndef _ELF_LOADER_H
#define _ELF_LOADER_H

#include <stdint.h>


#define ELF_BITSIZE_32       1
#define ELF_BITSIZE_64       2

#define ELF_ENDIANITY_LITTLE 1
#define ELF_ENDIANITY_BIG    2

#define ELF_TYPE_RELOCATABLE 1
#define ELF_TYPE_EXECUTABLE  2
#define ELF_TYPE_SHARED      3
#define ELF_TYPE_CORE        4

#define ELF_ARCH_NOARCH      0x00
#define ELF_ARCH_SPARC       0x02
#define ELF_ARCH_X86         0x03
#define ELF_ARCH_MIPS        0x08
#define ELF_ARCH_PPC         0x14
#define ELF_ARCH_ARM         0x28
#define ELF_ARCH_SUPERH      0x2A
#define ELF_ARCH_IA64        0x32
#define ELF_ARCH_X86_64      0x3E
#define ELF_ARCH_AARCH64     0xB7
#define ELF_ARCH_RISC_V      0xF3

struct i686_elf_header 
{
    uint32_t magic_no;
    uint8_t  bitsize;
    uint8_t  endianity;
    uint8_t  header_version;
    uint8_t  os_abi;
    uint32_t padding[2];
    uint16_t type;
    uint16_t instruction_set;
    uint32_t elf_version;
    uint32_t entry_pos;
    uint32_t program_header_pos;
    uint32_t section_header_pos;
    uint32_t flags;
    uint16_t header_size;
    uint16_t program_header_entry_size;
    uint16_t program_header_entry_no;
    uint16_t section_header_entry_size;
    uint16_t section_header_entry_no;
    uint16_t section_header_idx;
}__attribute__((packed));

struct debug_elf_header
{
    uint32_t magic_no;
    uint8_t  bitsize;
    uint8_t  endianity;
    uint8_t  header_version;
    uint8_t  os_abi;
    uint32_t padding;
    uint16_t type;
    uint16_t instruction_set;
    uint32_t elf_version;
    uint32_t entry_pos;
    uint32_t program_header_pos;
    uint32_t section_header_pos;
    uint32_t flags;
    uint16_t header_size;
    uint16_t program_header_entry_size;
    uint16_t program_header_entry_no;
    uint16_t section_header_entry_size;
    uint16_t section_header_entry_no;
    uint16_t section_header_idx;
};

#if ARCH == i686
typedef struct i686_elf_header elf_header_t;
#else
typedef struct debug_elf_header elf_header_t;
#endif

#endif