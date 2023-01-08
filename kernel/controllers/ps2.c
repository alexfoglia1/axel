#include <controllers/ps2.h>
#include <controllers/pic.h>
#include <controllers/com.h>
#include <controllers/acpi.h>

#include <common/utils.h>

#include <kernel/arch/io.h>
#include <kernel/arch/tty.h>

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


static uint8_t is_dual_channel;
static uint8_t ps2_present;

void
ps2_controller_init()
{
    ps2_present = 0x00;
    is_dual_channel = 0x00;

    uint16_t boot_arch_flags = acpi_get_boot_arch_flags();

    __slog__(COM1_PORT, "PS/2 controller init, boot_arch_flags(%w)\n", boot_arch_flags);
    if (0x01 == ((boot_arch_flags >> 1) & 0x01))
    {

        outb(PS2_CTRL_PORT, PS2_DSB_PORT_1);
        outb(PS2_CTRL_PORT, PS2_DSB_PORT_2);

        // Flush PS/2 output buffer
        inb(PS2_DATA_PORT);

        // Disabling all IRQs
        outb(PS2_CTRL_PORT, 0x20);
        outb(PS2_CTRL_PORT, 0x60);

        uint8_t conf_byte = inb(PS2_DATA_PORT);
        is_dual_channel = ((conf_byte >> 2) & 0x01);
        __slog__(COM1_PORT, "PS/2 controller init, is dual channel(%b)\n", is_dual_channel);

        // Performing controller self test
        outb(PS2_CTRL_PORT, 0xAA);
        uint8_t self_test = inb(PS2_DATA_PORT);
        if (0x55 == self_test)
        {
            __slog__(COM1_PORT, "PS/2 controller init, self test OK\n");

            if (is_dual_channel)
            {
                outb(PS2_CTRL_PORT, PS2_TST_PORT_1);
                uint8_t test_port_1 = inb(PS2_DATA_PORT);
                outb(PS2_CTRL_PORT, PS2_TST_PORT_2);
                uint8_t test_port_2 = inb(PS2_DATA_PORT);

                if (0x00 == test_port_1 && 0x00 == test_port_2)
                {
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_1);
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_2);
                    is_dual_channel = 0x01;
                    ps2_present = 0x01;
                }
                else if (0x00 == test_port_1 && 0x00 != test_port_2)
                {
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_1);

                    is_dual_channel = 0x00;
                    ps2_present = 0x01;
                }
                else if (0x00 != test_port_1 && 0x00 == test_port_2)
                {
                    // Working only port 2... considering failed
                    is_dual_channel = 0x00;
                    ps2_present = 0x00;
                }
                else
                {
                    // both failed
                    is_dual_channel = 0x00;
                    ps2_present = 0x00;
                }
            }
            else
            {
                outb(PS2_CTRL_PORT, PS2_TST_PORT_1);
                uint8_t test_port_1 = inb(PS2_DATA_PORT);

                if (test_port_1 != 0x00)
                {
                    is_dual_channel = 0x00;
                    ps2_present = 0x00;
                }
                else
                {
                    is_dual_channel = 0x00;
                    ps2_present = 0x01;
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_1);
                }
            }
        }
        else
        {
            is_dual_channel = 0x00;
            ps2_present = 0x00;

             __slog__(COM1_PORT, "PS/2 controller init, self test KO\n");
        }
    }
}


uint8_t
ps2_is_dual_channel()
{
    return is_dual_channel;
}


uint8_t
ps2_is_present()
{
    return ps2_present;
}
