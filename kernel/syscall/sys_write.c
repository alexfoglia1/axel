#include <syscall/syscall.h>
#include <kernel/arch/tty.h>


#if ARCH == i686
__attribute__((interrupt))
#endif
void
sys_write(interrupt_stack_frame_t* frame)
{
    register int rtype   asm("eax");
    register int rcount  asm("ebx");
    register int rbuf    asm("ecx");
    register int rioaddr asm("edx");

    uint32_t type   = (uint32_t) rtype;
    uint32_t count  = (uint32_t) rcount;
    uint32_t ioaddr = (uint32_t) rioaddr;

    switch (type)
    {
        case SYSCALL_TYPE_TTY_WRITE:
        {
            const char* buffer = (const char*)(rbuf);
            tty_putchars(buffer, count);

            break;
        }
        case SYSCALL_TYPE_IO_WRITE_BYTE:
        {
            uint8_t* buffer = (uint8_t*)(rbuf);
            for (uint32_t i = 0; i < count; i++)
            {
                outb(ioaddr, buffer[i]);
            }
            break;
        }
        case SYSCALL_TYPE_IO_WRITE_WORD:
        {
            uint16_t* buffer = (uint16_t*)(rbuf);
            for (uint32_t i = 0; i < count; i++)
            {
                outw(ioaddr, buffer[i]);
            }
            break;
        }
        case SYSCALL_TYPE_IO_WRITE_LONG:
        {
            uint32_t* buffer = (uint32_t*)(rbuf);
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
