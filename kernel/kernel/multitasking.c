#include <kernel/multitasking.h>

#include <kernel/arch/io.h>
#include <kernel/arch/gdt.h>

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

    __klog__(COM1_PORT, "Initializing multitask, initial_esp(0x%X)\n", initial_esp);

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
    current_task->kernel_stack = (uint32_t) kmalloc_a(KERNEL_STACK_SIZE);

    ready_tasks = current_task;

    next_tid += 1;

    __klog__(COM1_PORT, "Multitask initialized, current ready queue: tid(0x%X)\n", current_task->tid);

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
    current_task->kernel_stack = (uint32_t) kmalloc_a(KERNEL_STACK_SIZE);
    child_task->next = (struct task*) (0x00);
    
    next_tid += 1;

    // Put child task at the end of ready queue
    volatile task_t* task_ptr = ready_tasks;
    while (task_ptr->next != 0x00)
    {
        task_ptr = task_ptr->next;
    }
    task_ptr->next = child_task;

    __klog__(COM1_PORT, "tasking_fork(), parent tid(0x%X), child tid(0x%X)\n", parent_task->tid, task_ptr->next->tid);

    uint32_t eip;
    RF_READ_IST_PTR(eip);
    // From here on, we may have called read_eip and are the parent task
    // OR
    // We are the child task and we need to start execution
    if (current_task == parent_task)
    {
        // Set esp, ebp, eip for our child
        uint32_t esp;
        RF_READ_STK_PTR(esp);
        uint32_t ebp;
        RF_READ_BAS_PTR(ebp);

        child_task->esp = esp;
        child_task->ebp = ebp;
        child_task->eip = eip;

        sti();
        return child_task->tid;
    }
    else
    {
        sti();
        return 0;
    }
}


int
tasking_spawn_task(uint32_t entry_point)
{
    cli();

    // Create the stack for new task
    uint32_t new_stack = (uint32_t) kmalloc_a(8192);

    // Allocate and initialize new task
    task_t* child_task = (task_t*) kmalloc(sizeof(task_t));
    child_task->tid = next_tid;
    child_task->esp = new_stack;
    child_task->ebp = new_stack + 8192;
    child_task->eip = entry_point;
    child_task->page_directory = paging_clone_directory(paging_current_page_directory());

    child_task->next = (struct task*) (0x00);
    
    next_tid += 1;

    // Put child task at the end of ready queue
    volatile task_t* task_ptr = ready_tasks;
    while (task_ptr->next != 0x00)
    {
        task_ptr = task_ptr->next;
    }
    task_ptr->next = child_task;

    __klog__(COM1_PORT, "tasking_spawn_task(), spawned tid(0x%X)\n", child_task->tid);

    sti();

    return child_task->tid;
}


void
tasking_scheduler(uint32_t pit_ticks, uint32_t pit_millis)
{
    if (0x00 == current_task)
    {
        return;
    }

    uint32_t esp;
    RF_READ_STK_PTR(esp);
    uint32_t ebp;
    RF_READ_BAS_PTR(ebp);
    uint32_t eip;
    RF_READ_IST_PTR(eip);

    if (0x7A10ADED == eip)
    {
        // If read_eip() returns 0x7A1OADED, we are immediately after context_switch(), just return
        return;
    }

    // Save current task state in order to reload this task's state when it will be rescheduled
    current_task->esp = esp;
    current_task->ebp = ebp;
    current_task->eip = eip;
    current_task->page_directory = paging_current_page_directory();

    if (current_task->tid == 0x02)
    {
        __klog__(COM1_PORT, "Spawned task end timeslice. EIP saved 0x%X\n", current_task->eip);
    }
    else
    {
        __klog__(COM1_PORT, "Kernel task end timeslice. EIP saved 0x%X\n", current_task->eip);
    }

    // Implementing time sharing scheduler
    // TODO : use pit_ticks and/or pit_millis to implement different scheduling policies
    current_task = current_task->next;
    if (0x00 == current_task)
    {
        // If we served last process in ready queue, return to serve the first
        current_task = ready_tasks;
    }

    if (current_task->tid == 0x02)
    {
        __klog__(COM1_PORT, "Spawned task ready to be context_switched. EIP after context switch will be 0x%X\n", current_task->eip);
    }

    // Context switch will set the current page directory in CR3, no need to perform an hardware set page directory in paging.c
    paging_set_current_page_directory(current_task->page_directory, 0x00);
    gdt_set_kernel_stack(current_task->kernel_stack+KERNEL_STACK_SIZE);

    // Perform context switch
    context_switch(current_task->eip, current_task->esp, current_task->ebp, current_task->page_directory->physical_addr);
} 


int
tasking_gettid()
{
    return current_task->tid;
}


task_t*
tasking_get_current_task()
{
    return (task_t*) current_task;
}


void
tasking_move_stack(uint32_t new_stack_addr, uint32_t stack_size)
{
    paging_map(new_stack_addr - stack_size, new_stack_addr, paging_current_page_directory());

    paging_flush_tlb();

    __klog__(COM1_PORT, "Requested new stack at 0x%X, size(0x%X)\n", new_stack_addr, stack_size);

    uint32_t esp;
    RF_READ_STK_PTR(esp);
    uint32_t ebp;
    RF_READ_BAS_PTR(ebp);

    uint32_t offset = new_stack_addr - initial_esp;
    uint32_t new_esp = esp + offset;
    uint32_t new_ebp = ebp + offset;

    memcpy((void*) new_esp, (void*) esp, initial_esp - esp);

    __klog__(COM1_PORT, "Copied kernel initial stack to new stack\n");

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

    RF_WRITE_STK_PTR(new_esp);
    RF_WRITE_BAS_PTR(new_ebp);

    __klog__(COM1_PORT, "Stack moved, esp(0x%X->0x%X)\n", esp, new_esp);
}