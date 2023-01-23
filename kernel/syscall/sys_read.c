#include <syscall/syscall.h>

#include <kernel/arch/tty.h>

#include <stdio.h>

#include <controllers/com.h>

#include <common/utils.h>


void
sys_read(interrupt_stack_frame_t frame)
{
    uint32_t type = frame.eax;
    uint32_t buf = frame.ebx;
    uint32_t count = frame.ecx;
    //uint32_t ioaddr = frame.edx; todo read I/O

    switch (type)
    {
        case SYSCALL_TYPE_COM_1_READ:
        {
            uint8_t* buffer = (uint8_t*)(buf);
            int read = com_read(COM1_PORT, buffer, count);
            if (read)
                __slog__(COM1_PORT, "[COM1] >> %s\n", buffer);
            break;
        }
        case SYSCALL_TYPE_COM_2_READ:
        {
            uint8_t* buffer = (uint8_t*)(buf);
            int read = com_read(COM2_PORT, buffer, count);
            if (read)
                __slog__(COM1_PORT, "[COM2] >> %s\n", buffer);
            break;
        }
        case SYSCALL_TYPE_COM_3_READ:
        {
            uint8_t* buffer = (uint8_t*)(buf);
            int read = com_read(COM3_PORT, buffer, count);
            if (read)
                __slog__(COM1_PORT, "[COM3] >> %s\n", buffer);
            break;
        }
        default:
            break;
    }
}
