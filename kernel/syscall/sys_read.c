#include <syscall/syscall.h>

#include <kernel/arch/tty.h>

#include <controllers/com.h>


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
sys_read(interrupt_stack_frame_t* frame)
{

    register int rtype   asm("eax");
    register int rcount  asm("ebx");
    register int rbuf    asm("ecx");
    //register int rioaddr asm("edx");

    uint32_t type   = (uint32_t) rtype;
    uint32_t count  = (uint32_t) rcount;
    //uint32_t ioaddr = (uint32_t) rioaddr;

    switch (type)
    {
        case SYSCALL_TYPE_COM_1_READ:
        {
            uint8_t* buffer = (uint8_t*)(rbuf);
            com_read(COM1_PORT, buffer, count);
            tty_putstring("[COM1] >> ");
            tty_putchars((const char*)buffer, count);
            tty_putstring("\n");
            break;
        }
        case SYSCALL_TYPE_COM_2_READ:
        {
            uint8_t* buffer = (uint8_t*)(rbuf);
            com_read(COM2_PORT, buffer, count);
            tty_putstring("[COM2] >> ");
            tty_putchars((const char*)buffer, count);
            tty_putstring("\n");
            break;
        }
        case SYSCALL_TYPE_COM_3_READ:
        {
            uint8_t* buffer = (uint8_t*)(rbuf);
            com_read(COM3_PORT, buffer, count);
            tty_putstring("[COM3] >> ");
            tty_putchars((const char*)buffer, count);
            tty_putstring("\n");
            break;
        }
        default:
            break;
    }
}
