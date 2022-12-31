#include <controllers/acpi.h>
#include <common/utils.h>

#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>

static uint32_t* rsdt_addr;
static uint8_t ps2_present;


static uint32_t
acpi_rsdp_cks_sum(struct RSDPDescriptor* rsdp_desc)
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


static void
acpi_find_rsdt()
{
    uint32_t* p_mem = (uint32_t*)0xE0000;
    uint32_t* p_lim = (uint32_t*)0xFFFFF;

    uint32_t* rsdp_addr = find_plaintext_in_memory(p_mem, p_lim, "RSD PTR");

    __slog__(COM1_PORT, "RSDP String at 0x%X\n", (uint32_t)rsdp_addr);

    if (0x00 == rsdp_addr)
    {
        printf("\n%s\n", "NO RSDP FOUND - ACPI DISABLED");
        ps2_present = 1; // NO ACPI, NO RSDT AND NO FADT : PS/2 CONTROLLER IS PRESENT (https://wiki.osdev.org/%228042%22_PS/2_Controller)
    }
    else
    {
        struct RSDPDescriptor* rsdp_desc = (struct RSDPDescriptor*)(rsdp_addr);

        uint16_t checksum = (uint16_t)(acpi_rsdp_cks_sum(rsdp_desc) & 0x0000FFFF);
        uint8_t lsb = (uint8_t)(checksum & 0xFF);

        if (0x00 == lsb)
        {
            rsdt_addr = (uint32_t*)(rsdp_desc->rsdt_addr);
        }
        else
        {
            printf("%s\n", "ERROR : CANNOT VALIDATE RSDP CHECKSUM");
        }

        __slog__(COM1_PORT, "RSDP checksum: %w, lsb: %b\n", (uint32_t)checksum, lsb);
    }
}


static void
acpi_find_fadt()
{
    if (rsdt_addr != 0x00)
    {
        ps2_present = 0x01;

        struct ACPISDTHeader* header = (struct ACPISDTHeader*)(rsdt_addr);

        struct RSDT
        {
            struct ACPISDTHeader h;
            uint32_t ptr_to_other_sdt[(header->length - sizeof(struct ACPISDTHeader)) / 4];
        };
        struct RSDT* rsdt = (struct RSDT*)(rsdt_addr);

        char signature[5];
        memcpy(signature, header->signature, 4);
        signature[4] = '\0';

        char oemid[7];
        memcpy(oemid, header->oemid, 6);
        oemid[6] = '\0';

        char tbl_id[9];
        memcpy(tbl_id, header->oemtableid, 8);
        tbl_id[8] = '\0';

        __slog__(COM1_PORT, "RSDT signature(%s), oemid(%s), tbl_id(%s)\n", signature, oemid, tbl_id);

        uint8_t cks_sum = 0;
        for (uint32_t i = 0; i < header->length; i++)
        {
            cks_sum += ((char *) header)[i];
        }

        if (0x00 == cks_sum)
        {
            __slog__(COM1_PORT, "RSDT checksum ok\n");

            int entries = (header->length - sizeof(struct ACPISDTHeader)) / 4;
            for (int i = 0; i < entries; i++)
            {
                struct ACPISDTHeader *h = (struct ACPISDTHeader *) rsdt->ptr_to_other_sdt[i];
                if (!memcmp(h->signature, "FACP", 4))
                {
                    struct FADT* p_fadt = (struct FADT*)((uint8_t*)h + sizeof(struct ACPISDTHeader));
                    uint8_t* pBootArchFlags = (uint8_t*)(&p_fadt->BootArchitectureFlags);
                    uint8_t boot_arch_flags = *pBootArchFlags;
                    uint8_t bit_1 = (boot_arch_flags >> 6 & 0x01);

                    // FACP Exists : ps2_present = true iff bit_1 is set
                    ps2_present = (0x01 == bit_1);
                    __slog__(COM1_PORT, "Found facp, ps2_present(%b)\n", ps2_present);
                }
                
            }
        }
        else
        {
            printf("%s\n", "KERNEL PANIC : CANNOT VALIDATE RSDT CHECKSUM");
            abort();
        }
    }
}

// Public exposed ACPI interface
void
acpi_init()
{
    ps2_present = 0x00;
    rsdt_addr = 0x00;

    acpi_find_rsdt();
    acpi_find_fadt();
}


uint8_t
acpi_present()
{
    return rsdt_addr != 0x00;
}


uint8_t
acpi_ps2_present()
{
    return ps2_present;
}

