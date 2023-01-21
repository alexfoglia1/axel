#include <kernel/multitasking.h>

#include <kernel/arch/io.h>

#include <common/utils.h>

#include <string.h>

static uint32_t initial_esp = 0x00;
static uint32_t next_tid = 0x00;

static volatile task_t* current_task = (task_t*) 0x00;
static volatile task_t* ready_tasks = (task_t*) 0x00;


void
tasking_init(uint32_t _initial_esp)
{
    cli();

    // Initialize local variables
    next_tid = 0x01;
    initial_esp = _initial_esp;

    __slog__(COM1_PORT, "\nInitializing multitask, initial_esp(0x%X)\n", initial_esp);

    // Relocate stack
    tasking_move_stack(STACK_START, STACK_SIZE);

    // Initialize kernel task
    current_task = (task_t*) kmalloc(sizeof(task_t));

    current_task->tid = next_tid;
    current_task->esp = 0;
    current_task->ebp = 0;
    current_task->eip = 0;
    current_task->page_directory = paging_current_page_directory();
    current_task->next = (struct task*)(0x00);

    ready_tasks = current_task;

    next_tid += 1;

    __slog__(COM1_PORT, "Multitask initialized, current ready queue: tid(0x%X)\n", current_task->tid);

    sti();
}


int
tasking_fork()
{
    cli();

    // Mark us as parent_task
    volatile task_t* parent_task = current_task;

    // Create the page directory for our child
    page_directory_t* child_directory = paging_clone_directory(paging_current_page_directory());

    // Allocate and initialize child task
    task_t* child_task = (task_t*) kmalloc(sizeof(task_t));
    child_task->tid = next_tid;
    child_task->esp = 0;
    child_task->ebp = 0;
    child_task->eip = 0;
    child_task->page_directory = child_directory;
    child_task->next = (struct task*) (0x00);
    
    next_tid += 1;

    // Put child task at the end of ready queue
    volatile task_t* task_ptr = ready_tasks;
    while (task_ptr->next != 0x00)
    {
        task_ptr = task_ptr->next;
    }
    task_ptr->next = child_task;

    __slog__(COM1_PORT, "fork(), parent tid(0x%X), child tid(0x%X)\n", parent_task->tid, task_ptr->next->tid);

    uint32_t eip;
    eip = read_instruction_pointer();
    // From here on, we may have called read_instruction_pointer and are the parent task
    // OR
    // We are the child task and we need to start execution
    if (current_task == parent_task)
    {
        // Set esp, ebp, eip for our child
        uint32_t esp;
        asm volatile("mov %%esp, %0" : "=r" (esp));
        uint32_t ebp;
        asm volatile("mov %%ebp, %0" : "=r" (ebp));
        child_task->esp = esp;
        child_task->ebp = ebp;
        child_task->eip = eip;

        sti();

        return child_task->tid;
    }
    else
    {
        // return 0 by convention
        return 0;
    }
}


void
tasking_scheduler()
{
    if (0x00 == current_task)
    {
        return;
    }

    uint32_t esp;
    asm volatile("mov %%esp, %0" : "=r" (esp));
    uint32_t ebp;
    asm volatile("mov %%ebp, %0" : "=r" (ebp));
    uint32_t eip;
    eip = read_instruction_pointer();

    if (0xDEADC0DE == eip)
    {
        // I am child, return
        return;
    }

    // Save current task state in order to reload this task's state when it will be rescheduled
    current_task->esp = esp;
    current_task->ebp = ebp;
    current_task->eip = eip;
    current_task->page_directory = paging_current_page_directory();

    // Implementing round robin scheduler
    current_task = current_task->next;
    if (0x00 == current_task)
    {
        // If we served last process in ready queue, return to serve the first
        current_task = ready_tasks;
    }

    // Perform context switch
    paging_set_current_page_directory(current_task->page_directory);
    context_switch(current_task->eip, current_task->esp, current_task->ebp, current_task->page_directory->physical_addr);
} 


int
tasking_gettid()
{
    return current_task->tid;
}


void
tasking_move_stack(uint32_t new_stack_addr, uint32_t stack_size)
{
    paging_map(new_stack_addr - stack_size, new_stack_addr, paging_current_page_directory());

    uint32_t faulting_address = 0xDFFFFE04;
    uint32_t table_index, frame_index;
    paging_get_page(faulting_address, &table_index, &frame_index);

    paging_flush_tlb();

    __slog__(COM1_PORT, "Requested new stack at 0x%X, size(0x%X)\n", new_stack_addr, stack_size);

    // The usage of register int is error-prone since the value of register can be changed in subsequents functions calls
    uint32_t esp;
    asm volatile("mov %%esp, %0" : "=r" (esp));
    uint32_t ebp;
    asm volatile("mov %%ebp, %0" : "=r" (ebp));

    uint32_t offset = new_stack_addr - initial_esp;
    uint32_t new_esp = esp + offset;
    uint32_t new_ebp = ebp + offset;

    memcpy((void*) new_esp, (void*) esp, initial_esp - esp);

    __slog__(COM1_PORT, "Copied kernel initial stack to new stack\n");

    for (uint32_t i = new_stack_addr; i > new_stack_addr - stack_size; i-= sizeof(uint32_t))
    {
        uint32_t _i = *(uint32_t*)(i);

        if ((esp < _i) && (_i < initial_esp))
        {
            _i += offset;
            uint32_t* __i = (uint32_t*)(i);
            *__i = _i;
        }
    }

    asm volatile("mov %0, %%esp" : : "r" (new_esp));
    asm volatile("mov %0, %%ebp" : : "r" (new_ebp));

    __slog__(COM1_PORT, "Stack moved, esp(0x%X->0x%X), ebp(0x%X->0x%X)\n", esp, new_esp, ebp, new_ebp);
}