#ifndef _MULTITASK_H
#define _MULTITASK_H

#include <stdint.h>

#include <kernel/paging.h>
#include <kernel/memory_manager.h>

#define STACK_START 0xE0000000
#define STACK_SIZE  0x20000

extern uint32_t read_instruction_pointer();
extern void context_switch(uint32_t eip, uint32_t esp, uint32_t ebp, uint32_t page_directory);

// Structure which defines a process (called task here)
typedef struct task
{
    int tid;                            // The task id
    uint32_t esp;                       // Task stack pointer
    uint32_t ebp;                       // Task base pointer
    uint32_t eip;                       // Task instruction pointer
    page_directory_t* page_directory;   // Task page directory
    struct task* next;                  // Next task (a linked list of task can be created)
} task_t;

void tasking_init(uint32_t initial_esp);
void tasking_scheduler(uint32_t pit_ticks, uint32_t pit_millis);
int  tasking_fork();
int  tasking_gettid();

void tasking_move_stack(uint32_t new_stack_addr, uint32_t stack_size);

#endif