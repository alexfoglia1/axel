#include <drivers/keyboard.h>

#include <controllers/ps2.h>
#include <controllers/pic.h>

#include <interrupts/isr.h>

#include <kernel/arch/asm.h>
#include <kernel/arch/tty.h>

#include <stdio.h> // Todo : printing is not keyboard driver responsability


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
