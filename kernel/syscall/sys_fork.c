#include <syscall/syscall.h>

#include <kernel/multitasking.h>


int
sys_fork(interrupt_stack_frame_t frame)
{
    return tasking_fork();
}