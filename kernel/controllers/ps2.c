#include <controllers/ps2.h>
#include <controllers/pic.h>

#include <kernel/arch/asm.h>
#include <kernel/arch/tty.h>

#include <common/utils.h>

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>


static uint8_t is_dual_channel;
static uint8_t ps2_confirmed;

void
ps2_controller_init(uint8_t acpi_ps2_present)
{
    ps2_confirmed = 0x00;
    is_dual_channel = 0x00;

    __slog__(COM1_PORT, "Initializing ps2, acpi told: %s\n", acpi_ps2_present ? "ps2 is present" : "ps2 is not present");

    if (acpi_ps2_present)
    {
        outb(PS2_CTRL_PORT, PS2_DSB_PORT_1);
        outb(PS2_CTRL_PORT, PS2_DSB_PORT_2);

        inb(PS2_DATA_PORT); // Flush PS/2 output buffer

        // Disabling all IRQs
        outb(PS2_CTRL_PORT, 0x20);
        outb(PS2_CTRL_PORT, 0x60);

        uint8_t conf_byte = inb(PS2_DATA_PORT);

        is_dual_channel = ((conf_byte >> 2) & 0x01);
        __slog__(COM1_PORT, "PS/2 is dual channel: %b\n", is_dual_channel);
        // Performing controller self test
        outb(PS2_CTRL_PORT, 0xAA);
        uint8_t self_test = inb(PS2_DATA_PORT);
        if (0x55 == self_test)
        {
            __slog__(COM1_PORT, "PS/2 Self test passed\n");
            if (is_dual_channel)
            {
                outb(PS2_CTRL_PORT, PS2_TST_PORT_1);
                uint8_t test_port_1 = inb(PS2_DATA_PORT);
                outb(PS2_CTRL_PORT, PS2_TST_PORT_2);
                uint8_t test_port_2 = inb(PS2_DATA_PORT);

                __slog__(COM1_PORT, "Test PS/2 port_1: %b\n", test_port_1);
                __slog__(COM1_PORT, "Test PS/2 port_2: %b\n", test_port_2);

                if (0x00 == test_port_1 && 0x00 == test_port_2)
                {
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_1);
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_2);

                    is_dual_channel = 0x01;
                    ps2_confirmed = 0x01;
                }
                else if (0x00 == test_port_1 && 0x00 != test_port_2)
                {
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_1);

                    is_dual_channel = 0x00;
                    ps2_confirmed = 0x01;
                }
                else if (0x00 != test_port_1 && 0x00 == test_port_2)
                {
                    // Working only port 2... considering failed
                    is_dual_channel = 0x00;
                    ps2_confirmed = 0x00;
                }
                else
                {
                    // both failed
                    is_dual_channel = 0x00;
                    ps2_confirmed = 0x00;
                }
            }
            else
            {
                outb(PS2_CTRL_PORT, PS2_TST_PORT_1);
                uint8_t test_port_1 = inb(PS2_DATA_PORT);

                __slog__(COM1_PORT, "Test PS/2 port_1: %b\n", test_port_1);

                if (test_port_1 != 0x00)
                {
                    is_dual_channel = 0x00;
                    ps2_confirmed = 0x00;
                }
                else
                {
                    is_dual_channel = 0x00;
                    ps2_confirmed = 0x01;
                    outb(PS2_CTRL_PORT, PS2_ENB_PORT_1);
                }
            }
        }
        else
        {
            __slog__(COM1_PORT, "PS/2 Self test not passed, expected(0x55), actual(%X)\n", (uint64_t)(self_test));
            is_dual_channel = 0x00;
            ps2_confirmed = 0x00;
        }
    }
}


uint8_t
ps2_is_dual_channel()
{
    return is_dual_channel;
}


uint8_t
ps2_is_confirmed()
{
    return ps2_confirmed;
}
