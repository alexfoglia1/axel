#include <kernel/elf_loader.h>
#include <kernel/memory_manager.h>
#include <kernel/paging.h>

#include <kernel/arch/tty.h>

#include <string.h>


static uint32_t image_entry_point = 0x00;


static elf_load_status_t
check_header(uint8_t* elf_file)
{
    char ascii[4] = {'\0', '\0', '\0', '\0'};
    uint8_t magic_no = 0x00;

    elf_header_t* header = (elf_header_t*) elf_file;

    ascii[2] = (header->magic_no & 0xFF000000) >> 24;
    ascii[1] = (header->magic_no & 0x00FF0000) >> 16;
    ascii[0] = (header->magic_no & 0x0000FF00) >> 8;
    magic_no = (header->magic_no & 0x000000FF);

    if (ELF_MAGIC_NO != magic_no)
    {
        return ELF_WRONG_MAGIC_NO;
    }
    else if (0x00 != memcmp("ELF", ascii, strlen("ELF")))
    {
        return ELF_WRONG_ASCII;
    }
    else if (ELF_ARCH_X86 != header->instruction_set)
    {
        return ELF_UNSUPPORTED_ARCH;
    }
    else
    {
        return ELF_HEADER_OK;
    }
}


elf_load_status_t
elf_load(const char* exe_name)
{
    vfs_node_t* vfs_root = initrd_get_root();

    uint32_t i = 0;
    struct dirent *node = 0;
    elf_load_status_t status = ELF_NOT_FOUND;
    while ((node = vfs_read_dir(vfs_root, i)) != 0)
    {
        vfs_node_t* fs_node = vfs_find_dir(vfs_root, node->name);

        if (fs_node->flags != FS_DIRECTORY)
        {
            if (memcmp(exe_name, fs_node->name, strlen(exe_name)) == 0)
            {
                uint8_t* elf_file = kmalloc(fs_node->length);
                vfs_read(fs_node, 0, fs_node->length, (uint8_t*) elf_file);

                status = check_header(elf_file);

                if (ELF_HEADER_OK == status)
                {
                    elf_header_t* header = (elf_header_t*) elf_file;
                    for (uint32_t i = 0; i < (uint32_t) header->section_header_entry_size * header->section_header_entry_no; i += header->section_header_entry_size)
                    {
                        Elf32_Shdr* shdr = (Elf32_Shdr *)((uintptr_t)header + (header->section_header_pos + i));
                        if (shdr->sh_addr)
                        {
                            paging_map(shdr->sh_addr, shdr->sh_addr + shdr->sh_size, paging_current_page_directory());
                            memcpy((void*) shdr->sh_addr, (void*) header + shdr->sh_offset, shdr->sh_size);
                        }
                    }

                    image_entry_point = header->entry_pos;
                }


                break;
            }
        }

        i += 1;
    }

    if (image_entry_point != 0x00)
    {
        status = ELF_LOAD_OK;
    }
    
    return status;
}


uint32_t
elf_get_image_entry_point()
{
    uint32_t ret = image_entry_point;
    image_entry_point = 0x00; // reset the last image entry point in order to load other elfs

    return ret;
}