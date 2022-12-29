#include <drivers/ps2.h>
#include <drivers/pic.h>
#include <kernel/asm.h>
#include <kernel/tty.h>
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

        printf("ACPI\tREV\tOEM ID\tOEM TID\tOEM REV\tCR. ID\tCR.REV\n");
        printf("%s\t%b\t%s\t%s\t%u\t%X\t%u\n", signature, header->revision, oemid, tbl_id, header->oemrev, header->creatorid, header->creatorrev);

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
                    struct FADT
                    {
                        struct   ACPISDTHeader h;
                        uint32_t FirmwareCtrl;
                        uint32_t Dsdt;
                        uint8_t  Reserved;
                        uint8_t  PreferredPowerManagementProfile;
                        uint16_t SCI_Interrupt;
                        uint32_t SMI_CommandPort;
                        uint8_t  AcpiEnable;
                        uint8_t  AcpiDisable;
                        uint8_t  S4BIOS_REQ;
                        uint8_t  PSTATE_Control;
                        uint32_t PM1aEventBlock;
                        uint32_t PM1bEventBlock;
                        uint32_t PM1aControlBlock;
                        uint32_t PM1bControlBlock;
                        uint32_t PM2ControlBlock;
                        uint32_t PMTimerBlock;
                        uint32_t GPE0Block;
                        uint32_t GPE1Block;
                        uint8_t  PM1EventLength;
                        uint8_t  PM1ControlLength;
                        uint8_t  PM2ControlLength;
                        uint8_t  PMTimerLength;
                        uint8_t  GPE0Length;
                        uint8_t  GPE1Length;
                        uint8_t  GPE1Base;
                        uint8_t  CStateControl;
                        uint16_t WorstC2Latency;
                        uint16_t WorstC3Latency;
                        uint16_t FlushSize;
                        uint16_t FlushStride;
                        uint8_t  DutyOffset;
                        uint8_t  DutyWidth;
                        uint8_t  DayAlarm;
                        uint8_t  MonthAlarm;
                        uint8_t  Century;
                        uint16_t BootArchitectureFlags;
                        uint8_t  Reserved2;
                        uint32_t Flags;
                        uint8_t ResetReg[12];
                        uint8_t  ResetValue;
                        uint8_t  Reserved3[3];
                    }__attribute__((packed));

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
            printf("%s\n", "CRITICAL ERROR : CANNOT VALIDATE RSDT CHECKSUM");
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
    else
    {
    }

    printf("\nPS/2 Controller\n");
    printf("Present\tChannels\n");
    printf("%s\t%s\n\n", ps2_present == 0x01 ? "Yes" : "No", is_dual_channel ? "2" :
                                                             ps2_present == 0x01 ? "1" : "0");
}


uint8_t
ps2_controller_found()
{
    return ps2_present;
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
ps2_irq1_keyboard_handler(interrupt_stack_frame_t* frame)
{
    uint8_t key = inb(PS2_DATA_PORT); 

    char to_print = '\0';
    switch (key)
    {
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
            //Numbers
            to_print = (key - 1) + '0';
            break;
        case 16:
            to_print = 'q';
            break;
        case 17:
            to_print = 'w';
            break;
        case 18:
            to_print = 'e';
            break;
        case 19:
            to_print = 'r';
            break;
        case 20:
            to_print = 't';
            break;
        case 21:
            to_print = 'y';
            break;
        case 22:
            to_print = 'u';
            break;
        case 23:
            to_print = 'i';
            break;
        case 24:
            to_print = 'o';
            break;
        case 25:
            to_print = 'p';
            break;
        case 26:
            to_print = 'e'; // Accento in teoria
            break;
        case 27:
            to_print = '+';
            break;
        case 30:
            to_print = 'a';
            break;
        case 31:
            to_print = 's';
            break;
        case 32:
            to_print = 'd';
            break;
        case 33:
            to_print = 'f';
            break;
        case 34:
            to_print = 'g';
            break;
        case 35:
            to_print = 'h';
            break;
        case 36:
            to_print = 'j';
            break;
        case 37:
            to_print = 'k';
            break;
        case 38:
            to_print = 'l';
            break;
        case 39:
            to_print = 'o'; // Accento in teoria
            break;
        case 40:
            to_print = 'a'; // Accento in teoria
            break;
        case 41:
            to_print = '\\'; // Anche u con l'accento in teoria
            break;
        case 44:
            to_print = 'z';
            break;
        case 45:
            to_print = 'x';
            break;
        case 46:
            to_print = 'c';
            break;
        case 47:
            to_print = 'v';
            break;
        case 48:
            to_print = 'b';
            break;
        case 49:
            to_print = 'n';
            break;
        case 50:
            to_print = 'm';
            break;
        case 51:
            to_print = ',';
            break;
        case 52:
            to_print = '.';
            break;
        case 53:
        case 74:
            to_print = '-';
            break;
        case 78:
            to_print = '+';
            break;
        case PS2_KEY_ENTER_DOWN:
            to_print = '\n';
            break;
        case PS2_KEY_BACKSP_DOWN:
            to_print = '\b';
            break;
        case PS2_KEY_SPACE_DOWN:
            to_print = ' ';
            break;
        case PS2_KEY_UPP_DOWN:
            tty_row_up();
            break;
        case PS2_KEY_DWN_DOWN:
            tty_row_down();
            break;
        case PS2_KEY_RIGHT_DOWN:
            tty_column_right();
            break;
        case PS2_KEY_LEFT_DOWN:
            tty_column_left();
            break;
        case PS2_KEY_START_DOWN:
            tty_reset_column();
            break;
        default:
            //check for errors or non-character keys defined in drivers/ps2.h and not yet handled
            break;
    }

    if (to_print != '\0')
    {
        printf("%c", to_print); // TODO : printing is not ps2 driver responsability
    }

    outb(PIC_MASTER_CMD_PORT, PIC_EOI);
}
