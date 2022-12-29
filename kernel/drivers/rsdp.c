#include <drivers/rsdp.h>
#include <common/utils.h>
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>

static uint32_t* rsdt_addr = (uint32_t*)(0x00);

uint32_t
cks_sum(struct RSDPDescriptor* rsdp_desc)
{
    uint8_t* rsdp_bytes = (uint8_t*)(rsdp_desc);
    size_t   rsdp_size = sizeof(struct RSDPDescriptor);
    
    uint32_t sum = 0;
    for (size_t i = 0; i < rsdp_size; i++)
    {
        sum += rsdp_bytes[i];
    }

    return sum;
}


void
rsdp_find()
{
    uint32_t* p_mem = (uint32_t*)0xE0000;
	uint32_t* p_lim = (uint32_t*)0xFFFFF;

	uint32_t* rsdp_addr = find_plaintext_in_memory(p_mem, p_lim, "RSD PTR");

    if (0 == rsdp_addr)
    {
        printf("\n%s\n", "NO RSDP FOUND - ACPI DISABLED");
    }
    else
    {
        struct RSDPDescriptor* rsdp_desc = (struct RSDPDescriptor*)(rsdp_addr);

        char signature[9];
        memcpy(signature, rsdp_desc->signature, 8);
        signature[8] = '\0';

        char oemid[7];
        memcpy(oemid, rsdp_desc->oemid, 6);
        oemid[6] = '\0';

        printf("RSDP\tOEMID\tREV\n");
        printf("%s\t%s\t%b\n\n", signature, oemid, rsdp_desc->rev);
        
        uint16_t checksum = (uint16_t)(cks_sum(rsdp_desc) & 0x0000FFFF);
        uint8_t msb = (uint8_t)((checksum >> 8) & 0xFF);
        uint8_t lsb = (uint8_t)(checksum & 0xFF);

        if (0x00 == lsb)
        {
            rsdt_addr = (uint32_t*)(rsdp_desc->rsdt_addr);
        }
        else
        {
            printf("%s\n", "ERROR : CANNOT VALIDATE RSDP CHECKSUM");
        }
    }
}

uint32_t*
rsdp_get_rsdt_address()
{
    return rsdt_addr;
}