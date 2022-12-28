#ifndef _RSDP_H
#define _RSDP_H

#include <stdint.h>

struct RSDPDescriptor
{
    char       signature[8];
    uint8_t    checksum;
    char       oemid[6];
    uint8_t    rev;
    uint32_t   addr;
} __attribute__ ((packed));

#endif