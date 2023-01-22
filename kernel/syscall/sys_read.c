#include <syscall/syscall.h>

#include <kernel/arch/tty.h>
#include <kernel/arch/rf.h>

#include <controllers/com.h>


void
sys_read(interrupt_stack_frame_t frame)
{
    uint32_t register_type;
    uint32_t register_count;
    uint32_t register_buf;
    RF_READ_GENERAL_A_32(register_type);
    RF_READ_GENERAL_B_32(register_count);
    RF_READ_GENERAL_C_32(register_buf);

    switch (register_type)
    {
        case SYSCALL_TYPE_COM_1_READ:
        {
            uint8_t* buffer = (uint8_t*)(register_buf);
            com_read(COM1_PORT, buffer, register_count);
            tty_putstring("[COM1] >> ");
            tty_putchars((const char*)buffer, register_count);
            tty_putstring("\n");
            break;
        }
        case SYSCALL_TYPE_COM_2_READ:
        {
            uint8_t* buffer = (uint8_t*)(register_buf);
            com_read(COM2_PORT, buffer, register_count);
            tty_putstring("[COM2] >> ");
            tty_putchars((const char*)buffer, register_count);
            tty_putstring("\n");
            break;
        }
        case SYSCALL_TYPE_COM_3_READ:
        {
            uint8_t* buffer = (uint8_t*)(register_buf);
            com_read(COM3_PORT, buffer, register_count);
            tty_putstring("[COM3] >> ");
            tty_putchars((const char*)buffer, register_count);
            tty_putstring("\n");
            break;
        }
        default:
            break;
    }
}
