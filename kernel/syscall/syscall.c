#include <syscall/syscall.h>

#include <common/utils.h>

#include <interrupts/isr.h>

#include <kernel/arch/tty.h>

#include <unistd.h>

void
syscall_init()
{
    isr_register(SYSCALL_INT_NO_READ,  &sys_read);
    isr_register(SYSCALL_INT_NO_WRITE, &sys_write);
    isr_register(SYSCALL_INT_NO_FORK,  &sys_fork);
    isr_register(SYSCALL_INT_NO_SPAWN, &sys_spawn);

    __klog__(COM1_PORT, "Syscall mapped\n");
}