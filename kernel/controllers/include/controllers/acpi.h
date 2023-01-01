#ifndef _ACPI_H
#define _ACPI_H

#include <stdint.h>

struct RSDPtr
{
    uint8_t Signature[8];
    uint8_t CheckSum;
    uint8_t OemID[6];
    uint8_t Revision;
    uint32_t *RsdtAddress;
};

struct FACP
{
    uint8_t Signature[4];
    uint32_t Length;
    uint8_t unneded1[40 - 8];
    uint32_t* DSDT;
    uint8_t unneded2[48 - 44];
    uint32_t* SMI_CMD;
    uint8_t ACPI_ENABLE;
    uint8_t ACPI_DISABLE;
    uint8_t unneded3[64 - 54];
    uint32_t* PM1a_CNT_BLK;
    uint32_t* PM1b_CNT_BLK;
    uint8_t unneded4[89 - 72];
    uint8_t PM1_CNT_LEN;
};

void acpi_init();
void acpi_enable();
void acpi_shutdown();

uint8_t acpi_is_initialized();
uint8_t acpi_is_enabled();
uint16_t acpi_get_boot_arch_flags();

#endif