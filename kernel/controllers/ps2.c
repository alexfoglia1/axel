#include <controllers/ps2.h>
#include <controllers/pic.h>

#include <kernel/arch/asm.h>
#include <kernel/arch/tty.h>

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


static uint8_t ps2_present;
static uint8_t is_dual_channel;

void
ps2_controller_init(uint32_t* rsdt_addr)
{
    ps2_present = 0;
    is_dual_channel = 0;
    if (0x00 == rsdt_addr)
    {
        ps2_present = 1; // NO ACPI, NO RSDT AND NO FADT : PS/2 CONTROLLER IS PRESENT (https://wiki.osdev.org/%228042%22_PS/2_Controller)
    }
    else
    {

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

        uint8_t cks_sum = 0;
        for (uint32_t i = 0; i < header->length; i++)
        {
            cks_sum += ((char *) header)[i];
        }

        if (0x00 == cks_sum)
        {
            int entries = (header->length - sizeof(struct ACPISDTHeader)) / 4;
            ps2_present = 1;
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
                }
                
            }
        }
        else
        {
            printf("%s\n", "KERNEL PANIC : CANNOT VALIDATE RSDT CHECKSUM");
            abort();
        }
    }

    if (ps2_present)
    {
        outb(PS2_CTRL_PORT, PS2_DSB_PORT_1);
        outb(PS2_CTRL_PORT, PS2_DSB_PORT_2);

        inb(PS2_DATA_PORT); // Flush PS/2 output buffer

        // Disabling all IRQs
        outb(PS2_CTRL_PORT, 0x20);
        outb(PS2_CTRL_PORT, 0x60);

        uint8_t conf_byte = inb(PS2_DATA_PORT);

        is_dual_channel = ((conf_byte >> 2) & 0x01);

        // Performing controller self test
        outb(PS2_CTRL_PORT, 0xAA);
        uint8_t self_test = inb(PS2_DATA_PORT);
        if (0x55 == self_test)
        {
            if (is_dual_channel)
            {
                outb(PS2_CTRL_PORT, PS2_TST_PORT_1);
                uint8_t test_port_1 = inb(PS2_DATA_PORT);
                outb(PS2_CTRL_PORT, PS2_TST_PORT_2);
                uint8_t test_port_2 = inb(PS2_DATA_PORT);

                if (test_port_1 != 0x00)
                {
                    is_dual_channel = 0;
                    ps2_present = 0;
                }
                else
                {
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_1);
                }
                
                if (test_port_2 != 0x00)
                {
                    if (test_port_1 == 0x00)
                    {
                        is_dual_channel = 0;
                    }
                    else
                    {
                        is_dual_channel = 0;
                        ps2_present = 0;
                    }
                }
                else
                {
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_2);
                }
            }
            else
            {
                outb(PS2_CTRL_PORT, PS2_TST_PORT_1);
                uint8_t test_port_1 = inb(PS2_DATA_PORT);
                if (test_port_1 != 0x00)
                {
                    is_dual_channel = 0;
                    ps2_present = 0;
                }
                else
                {
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_1);
                }
            }
        }
        else
        {
            is_dual_channel = 0;
            ps2_present = 0;
        }
    }
}


uint8_t
ps2_controller_found()
{
    return ps2_present;
}


uint8_t
ps2_is_dual_channel()
{
    return is_dual_channel;
}
