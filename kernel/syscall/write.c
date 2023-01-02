#include <syscall/syscall.h>
#include <kernel/arch/tty.h>


#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
write(interrupt_stack_frame_t* frame)
{
    uint32_t desc = frame->eax;
    uint32_t count = frame->ebx;
    unsigned char* buffer = (unsigned char*)(frame->ecx);

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
