#include <syscall/syscall.h>

#include <kernel/arch/tty.h>

#include <stdio.h>

#include <controllers/com.h>


void
sys_read(interrupt_stack_frame_t frame)
{
    uint32_t rtype = frame.eax;
    uint32_t rbuf = frame.ebx;
    uint32_t rcount = frame.ecx;
    uint32_t rioaddr = frame.edx;
    uint32_t err_code = frame.err_code; // should be zero ?
    uint32_t int_no = frame.int_no; // Should be 0x20

    uint32_t type = (uint32_t) rtype;
    uint32_t count = (uint32_t) rcount;
    uint32_t buf = (uint32_t) rbuf;
    uint32_t ioaddr = (uint32_t) rioaddr;

    char temp[512];
    sprintf(temp, "sys_read: err_code(%u), int_no(0x%X)\n\ttype(0x%X), count(0x%X), buf(0x%X), ioaddr(0x%X)\n\n", err_code, int_no, type, count, buf, ioaddr);
    tty_putstring(temp);

    char temp2[512];
    sprintf(temp2, "sys_read: eax(0x%X), ebx(0x%X), ecx(0x%X), edx(0x%X)\n", frame.eax, frame.ebx, frame.ecx, frame.edx);
    tty_putstring(temp2);
    while(1);
    return;
#if 0
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
#endif
}
