#include <syscall/syscall.h>

#ifndef __DEBUG_STUB__
__attribute__((interrupt))
#endif
void
read(interrupt_stack_frame_t* frame)
{
    uint32_t desc = frame->eax;
    uint32_t count = frame->ebx;
    unsigned char* buffer = (unsigned char*)(frame->ecx);

    int i = 0;
    for (; i < count; i++)
    {
        buffer[i] = inb(desc);
    }
}
