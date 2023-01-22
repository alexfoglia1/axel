#include <syscall/syscall.h>

#include <kernel/arch/tty.h>
#include <kernel/arch/io.h>
#include <kernel/arch/rf.h>

#include <stdio.h>


#if ARCH == i686
__attribute__((interrupt))
#endif
void
sys_write(interrupt_stack_frame_t* frame)
{

    uint32_t rtype = 0;
    uint32_t rcount = 0;
    uint32_t rbuf = 0;
    uint32_t rioaddr = 0; 
    
    RF_READ_GENERAL_A_32(rtype);
    RF_READ_GENERAL_B_32(rcount);
    RF_READ_GENERAL_C_32(rbuf);
    RF_READ_GENERAL_D_32(rioaddr);

    uint32_t type = (uint32_t) rtype;
    uint32_t count = (uint32_t) rcount;
    uint32_t buf = (uint32_t) rbuf;
    uint32_t ioaddr = (uint32_t) rioaddr;

    char temp[512];
    sprintf(temp, "sys_write: type(0x%X), count(0x%X), buf(0x%X), ioaddr(0x%X)\n\n", type, count, buf, ioaddr);
    tty_putstring(temp);
    return;
#if 0
    switch (register_type)
    {
        case SYSCALL_TYPE_TTY_WRITE:
        {
            const char* buffer = (const char*)(register_buf);
            tty_putchars(buffer, register_count);

            break;
        }
        case SYSCALL_TYPE_IO_WRITE_BYTE:
        {
            uint8_t* buffer = (uint8_t*)(register_buf);
            for (uint32_t i = 0; i < register_count; i++)
            {
                outb(register_count, buffer[i]);
            }
            break;
        }
        case SYSCALL_TYPE_IO_WRITE_WORD:
        {
            uint16_t* buffer = (uint16_t*)(register_buf);
            for (uint32_t i = 0; i < register_count; i++)
            {
                outw(register_ioaddr, buffer[i]);
            }
            break;
        }
        case SYSCALL_TYPE_IO_WRITE_LONG:
        {
            uint32_t* buffer = (uint32_t*)(register_buf);
            for (uint32_t i = 0; i < register_count; i++)
            {
                outl(register_ioaddr, buffer[i]);
            }
            break;
        }
        default:
            break;
    }
#endif
}
