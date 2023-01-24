#include <syscall/syscall.h>

#include <kernel/multitasking.h>
#include <kernel/arch/tty.h>

int
sys_fork(interrupt_stack_frame_t frame)
{
    printk("sys_fork()\n");
    return tasking_fork();
}