#include <drivers/keyboard.h>

#include <controllers/pic.h>
#include <controllers/acpi.h>

#include <common/utils.h>

#include <kernel/arch/io.h>
#include <kernel/arch/tty.h>

#include <stdio.h> // Todo : printing is not keyboard driver responsability

static uint8_t is_caps;
static uint8_t is_shift_holded;
static uint8_t data_port;

void
keyboard_init(uint8_t in_port)
{
    __slog__(COM1_PORT, "Initializing keyboard\n");

    is_caps = 0;
    is_shift_holded = 0;
    data_port = in_port;

    pic_add_irq(KBD_IRQ_INTERRUPT_NO, &keyboard_irq_handler);

    __slog__(COM1_PORT, "Keyboard initialized\n");
}


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
keyboard_irq_handler(interrupt_stack_frame_t* frame)
{
    uint8_t key = inb(data_port);

    char to_print = '\0';
    switch (key)
    {
        case 2:
            to_print = is_shift_holded == 0x01 ? '!' : '1';
            break;
        case 3:
            to_print = is_shift_holded == 0x01 ? '\"' : '2';
            break;
        case 4:
            to_print = is_shift_holded == 0x01 ? '3' : '3';
            break;
        case 5:
            to_print = is_shift_holded == 0x01 ? '$' : '4';
            break;
        case 6:
            to_print = is_shift_holded == 0x01 ? '%' : '5';
            break;
        case 7:
            to_print = is_shift_holded == 0x01 ? '&' : '6';
            break;
        case 8:
            to_print = is_shift_holded == 0x01 ? '/' : '7';
            break;
        case 9:
            to_print = is_shift_holded == 0x01 ? '(' : '8';
            break;
        case 10:
            to_print = is_shift_holded == 0x01 ? ')' : '9';
            break;
        case 11:
            to_print = is_shift_holded == 0x01 ? '=' : '0';
            break;
        case 16:
            to_print = (is_shift_holded == is_caps) ? 'q' : 'Q';
            break;
        case 17:
            to_print = (is_shift_holded == is_caps) ? 'w' : 'W';
            break;
        case 18:
            to_print = (is_shift_holded == is_caps) ? 'e' : 'E';
            break;
        case 19:
            to_print = (is_shift_holded == is_caps) ? 'r' : 'R';
            break;
        case 20:
            to_print = (is_shift_holded == is_caps) ? 't' : 'T';
            break;
        case 21:
            to_print = (is_shift_holded == is_caps) ? 'y' : 'Y';
            break;
        case 22:
            to_print = (is_shift_holded == is_caps) ? 'u' : 'U';
            break;
        case 23:
            to_print = (is_shift_holded == is_caps) ? 'i' : 'I';
            break;
        case 24:
            to_print = (is_shift_holded == is_caps) ? 'o' : 'O';
            break;
        case 25:
            to_print = (is_shift_holded == is_caps) ? 'p' : 'P';
            break;
        case 26:
            to_print = (is_shift_holded == is_caps) ? 'e' : 'E'; // Accento in teoria
            break;
        case 27:
            to_print = (is_shift_holded) ? '*' : '+';
            break;
        case 30:
            to_print = (is_shift_holded == is_caps) ? 'a' : 'A';
            break;
        case 31:
            to_print = (is_shift_holded == is_caps) ? 's' : 'S';
            break;
        case 32:
            to_print = (is_shift_holded == is_caps) ? 'd' : 'D';
            break;
        case 33:
            to_print = (is_shift_holded == is_caps) ? 'f' : 'F';
            break;
        case 34:
            to_print = (is_shift_holded == is_caps) ? 'g' : 'G';
            break;
        case 35:
            to_print = (is_shift_holded == is_caps) ? 'h' : 'H';
            break;
        case 36:
            to_print = (is_shift_holded == is_caps) ? 'j' : 'J';
            break;
        case 37:
            to_print = (is_shift_holded == is_caps) ? 'k' : 'K';
            break;
        case 38:
            to_print = (is_shift_holded == is_caps) ? 'l' : 'L';
            break;

        case 41:
            to_print = '\\'; // Anche u con l'accento in teoria
            break;
        case 44:
            to_print = (is_shift_holded == is_caps) ? 'z' : 'Z';
            break;
        case 45:
            to_print = (is_shift_holded == is_caps) ? 'x' : 'X';
            break;
        case 46:
            to_print = (is_shift_holded == is_caps) ? 'c' : 'C';
            break;
        case 47:
            to_print = (is_shift_holded == is_caps) ? 'v' : 'V';
            break;
        case 48:
            to_print = (is_shift_holded == is_caps) ? 'b' : 'B';
            break;
        case 49:
            to_print = (is_shift_holded == is_caps) ? 'n' : 'N';
            break;
        case 50:
            to_print = (is_shift_holded == is_caps) ? 'm' : 'M';
            break;
        case 51:
            to_print = (is_shift_holded) ? ';' : '.';
            break;
        case 52:
            to_print = (is_shift_holded) ? ':' : '.';
            break;
        case 53:
        case 74:
            to_print = (is_shift_holded) ? '_' : '-';
            break;
        case 78:
            to_print = (is_shift_holded) ? '+' : '*';
            break;
        case KBD_KEY_ENTER_DOWN:
            to_print = '\n';
            break;
        case KBD_KEY_BACKSP_DOWN:
            to_print = '\b';
            break;
        case KBD_KEY_SPACE_DOWN:
            to_print = ' ';
            break;
        case KBD_KEY_UPP_DOWN:
            tty_row_up();
            break;
        case KBD_KEY_DWN_DOWN:
            tty_row_down();
            break;
        case KBD_KEY_RIGHT_DOWN:
            tty_column_right();
            break;
        case KBD_KEY_LEFT_DOWN:
            tty_column_left();
            break;
        case KBD_KEY_START_DOWN:
            tty_reset_column();
            break;
        case KBD_KEY_LSHIFT_DOWN:
            is_shift_holded = 1;
            break;
        case KBD_KEY_LSHIFT_UP:
            is_shift_holded = 0;
            break;
        case KBD_KEY_CAPS_UP:
            is_caps = (is_caps == 0x01) ? 0x00 : 0x01;
            break;
        case KBD_KEY_ESCAPE_DOWN:
            if (is_shift_holded)
            {
                acpi_shutdown();
            }
            break;
        default:
            //check for errors or non-character keys defined in drivers/keyboard.h and not yet handled
            break;
    }

    if (to_print != '\0')
    {
        printf("%c", to_print); // TODO : printing is not keyboard driver responsability
    }

    outb(PIC_MASTER_CMD_PORT, PIC_EOI);
}
