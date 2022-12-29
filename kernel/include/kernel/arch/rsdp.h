#ifndef _RSDP_H
#define _RSDP_H

#include <stdint.h>

struct RSDPDescriptor
{
    char       signature[8];
    uint8_t    checksum;
    char       oemid[6];
    uint8_t    rev;
    uint32_t   rsdt_addr;
} __attribute__ ((packed));


uint32_t cks_sum(struct RSDPDescriptor* rsdp_desc);
void rsdp_find();
uint32_t* rsdp_get_rsdt_address();

#endif