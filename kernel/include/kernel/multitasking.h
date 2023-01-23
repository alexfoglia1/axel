#ifndef _MULTITASK_H
#define _MULTITASK_H

#include <stdint.h>

#include <kernel/paging.h>
#include <kernel/memory_manager.h>

#include <kernel/arch/rf.h>
#include <kernel/arch/asm.h>

#define STACK_START 0xE0000000
#define STACK_SIZE  0x20000
#define KERNEL_STACK_SIZE 0x800 // 2KiB of kernel stack

// Structure which defines a process (called task here)
typedef struct task
{
    int tid;                            // The task id
    uint32_t esp;                       // Task stack pointer
    uint32_t ebp;                       // Task base pointer
    uint32_t eip;                       // Task instruction pointer
    page_directory_t* page_directory;   // Task page directory
    uint32_t kernel_stack;              // Kernel stack location.
    struct task* next;                  // Next task (a linked list of task can be created)
} task_t;

void tasking_init(uint32_t initial_esp);
void tasking_scheduler(uint32_t pit_ticks, uint32_t pit_millis);
int  tasking_fork();
int  tasking_gettid();

task_t* tasking_get_current_task();

void tasking_move_stack(uint32_t new_stack_addr, uint32_t stack_size);

#endif