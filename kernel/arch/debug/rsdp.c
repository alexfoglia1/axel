#include <kernel/arch/rsdp.h>

#include <common/utils.h>

#include <controllers/com.h>

#include <stdio.h>

uint32_t
cks_sum(struct RSDPDescriptor* rsdp_desc)
{
    return 0;
}


void
rsdp_find()
{

       __slog__(COM1_PORT, "RSDP String at 0x%X\n", (uint32_t)0xF9FA0);
       if (1)
       {
           uint16_t checksum = 0;
           uint8_t lsb = (uint8_t)(checksum & 0xFF);

           __slog__(COM1_PORT, "RSDP checksum: %w, lsb: %b\n", (uint32_t)checksum, lsb);
       }
    return;
}


uint32_t*
rsdp_get_rsdt_address()
{
    return (uint32_t*) 0;
}
