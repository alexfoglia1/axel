#include <syscall/syscall.h>
#include <kernel/arch/tty.h>


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
write(interrupt_stack_frame_t* frame)
{
    register int rdesc asm("eax");
    register int rcount asm("ebx");
    register int rbuf asm("ecx");

    uint32_t desc = (uint32_t) rdesc;
    uint32_t count = (uint32_t) rcount;
    unsigned char* buffer = (unsigned char*)(rbuf);


    if (0x00 == desc)
    {
        /** Write to stdout **/
        tty_putchars(buffer, count);
    }
    else
    {
        int i = 0;
        for (; i < count; i++)
        {
            outb(desc, buffer[i]);
        }
    }
}
