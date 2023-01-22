#include <syscall/syscall.h>

#include <kernel/arch/tty.h>
#include <kernel/arch/io.h>

void
sys_write(interrupt_stack_frame_t frame)
{
    uint32_t type   = frame.eax;
    uint32_t buf    = frame.ebx;
    uint32_t count  = frame.ecx;
    uint32_t ioaddr = frame.edx;

    switch (type)
    {
        case SYSCALL_TYPE_TTY_WRITE:
        {
            const char* buffer = (const char*)(buf);
            tty_putchars(buffer, count);

            break;
        }
        case SYSCALL_TYPE_IO_WRITE_BYTE:
        {
            uint8_t* buffer = (uint8_t*)(buf);
            for (uint32_t i = 0; i < count; i++)
            {
                outb(ioaddr, buffer[i]);
            }
            break;
        }
        case SYSCALL_TYPE_IO_WRITE_WORD:
        {
            uint16_t* buffer = (uint16_t*)(buf);
            for (uint32_t i = 0; i < count; i++)
            {
                outw(ioaddr, buffer[i]);
            }
            break;
        }
        case SYSCALL_TYPE_IO_WRITE_LONG:
        {
            uint32_t* buffer = (uint32_t*)(buf);
            for (uint32_t i = 0; i < count; i++)
            {
                outl(ioaddr, buffer[i]);
            }
            break;
        }
        default:
            break;
    }
}
