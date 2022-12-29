#include <kernel/mem.h>


kern_memory_map_t parse_multiboot_header(multiboot_info_t* mbd)
{
    kern_memory_map_t ret;
    ret.n_entries = mbd->mmap_length / sizeof(multiboot_memory_map_t);

    for (uint32_t i = 0; i < mbd->mmap_length; i += sizeof(multiboot_memory_map_t)) 
    {
        multiboot_memory_map_t* mmmt = 
            (multiboot_memory_map_t*) (mbd->mmap_addr + i);
        
        kern_memory_map_entry_t entry;
        entry.start_addr = (uint32_t*)((uint32_t)mmmt->addr);
        entry.length = mmmt->len;

        if (MULTIBOOT_MEMORY_AVAILABLE == mmmt->type)
        {
            entry.type = AVAILABLE;
        }
        else if (MULTIBOOT_MEMORY_RESERVED == mmmt->type)
        {
            entry.type = RESERVED;
        }
        else if (MULTIBOOT_MEMORY_ACPI_RECLAIMABLE == mmmt->type)
        {
            entry.type = ACPI_RECLAIMABLE;
        }
        else if (MULTIBOOT_MEMORY_NVS == mmmt->type)
        {
            entry.type = NVS;
        }
        else if (MULTIBOOT_MEMORY_BADRAM == mmmt->type)
        {
            entry.type = BADRAM;
        }
        else
        {
            entry.type = UNKNOWN;
        }

        // assign entry to ret.entries[i]
    }

    
    return ret;
}