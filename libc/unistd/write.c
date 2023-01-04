#include <unistd.h>


int
write(int desc, uint8_t* buffer, size_t count)
{
#ifndef __DEBUG_STUB__
    for (size_t i = 0; i < count; i++)
    {
        uint8_t* _ic = &buffer[i];
        //TODO atm desc == syscall type, desc should be a full descriptor to be decoded (if it is a file, an I/O device, the stdout ecc)
        asm volatile ("mov %0, %%eax\n\
                   mov $1, %%ebx\n\
                   mov %1, %%ecx\n\
                   int $33"
                   :: "m" (desc), "m" (_ic));
    }
#endif

    return count;
}
