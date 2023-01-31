#include <syscall/syscall.h>

#include <kernel/elf_loader.h>
#include <kernel/multitasking.h>


int
sys_spawn(interrupt_stack_frame_t frame)
{
    uint32_t buf    = frame.ebx;
    char* filename = (char*)(buf);
    elf_load_status_t load_status = elf_load(filename);

    if (ELF_LOAD_OK == load_status)
    {
        uint32_t bash_entry_point = elf_get_image_entry_point();
        return tasking_spawn_task(bash_entry_point);
    }
    
    return -1;
}