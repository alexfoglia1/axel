#include <syscall/syscall.h>

#include <kernel/arch/tty.h>
#include <kernel/arch/io.h>

#include <controllers/com.h>

#include <drivers/keyboard.h>

#include <common/utils.h>

#include <unistd.h>


int
sys_read(interrupt_stack_frame_t frame)
{
    uint32_t type = frame.eax;
    uint32_t buf = frame.ebx;
    uint32_t count = frame.ecx;
    //uint32_t ioaddr = frame.edx; todo read I/O

    sti();
    switch (type)
    {
        case SYSCALL_TYPE_COM_READ(1):
        {
            uint8_t* buffer = (uint8_t*)(buf);
            int read = com_read(COM1_PORT, buffer, count);
            if (read)
                __klog__(COM1_PORT, "[COM1] >> %s\n", buffer);
            return read;
        }
        case SYSCALL_TYPE_COM_READ(2):
        {
            uint8_t* buffer = (uint8_t*)(buf);
            int read = com_read(COM2_PORT, buffer, count);
            if (read)
                __klog__(COM1_PORT, "[COM2] >> %s\n", buffer);
            return read;
        }
        case SYSCALL_TYPE_KBD_READ:
        {
            // Blocking for definition
            uint8_t* buffer = (uint8_t*)(buf);
            uint32_t read = 0;

            while (read < count)
            {
                read += (uint32_t) keyboard_read(&buffer[read], count);
            }

            if (read)
                __klog__(COM1_PORT, "[KEYBOARD] >> %s\n", buffer);
            return read;
        }
        default:
            break;
    }
    cli();

    return -1;
}
