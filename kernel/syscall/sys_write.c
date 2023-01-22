#include <syscall/syscall.h>

#include <kernel/arch/tty.h>
#include <kernel/arch/io.h>
#include <kernel/arch/rf.h>

#include <stdio.h>


void
sys_write(interrupt_stack_frame_t frame)
{

    uint32_t rtype = frame.syscall_type;
    uint32_t rcount = frame.syscall_count;
    uint32_t rbuf = frame.syscall_buffer;
    uint32_t rioaddr = frame.syscall_ioaddr;
    uint32_t err_code = frame.err_code; // should be zero ?
    uint32_t int_no = frame.int_no; // Should be 0x21
    
    //RF_READ_GENERAL_A_32(rtype);
    //RF_READ_GENERAL_B_32(rcount);
    //RF_READ_GENERAL_C_32(rbuf);
    //RF_READ_GENERAL_D_32(rioaddr);

    uint32_t type = (uint32_t) rtype;
    uint32_t count = (uint32_t) rcount;
    uint32_t buf = (uint32_t) rbuf;
    uint32_t ioaddr = (uint32_t) rioaddr;

    char temp[512];
    sprintf(temp, "sys_write: err_code(%u), int_no(0x%X)\n\ttype(0x%X), count(0x%X), buf(0x%X), ioaddr(0x%X)\n\n", err_code, int_no, type, count, buf, ioaddr);
    tty_putstring(temp);
    while(1);
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
