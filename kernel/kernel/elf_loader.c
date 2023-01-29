#include <kernel/elf_loader.h>

#include <kernel/arch/tty.h>

#include <string.h>


static elf_load_status_t
parse_header(elf_header_t* header, vfs_node_t* fs_node)
{
    char ascii[4] = {'\0', '\0', '\0', '\0'};
    uint8_t magic_no = 0x00;

    vfs_read(fs_node, 0, sizeof(elf_header_t), (uint8_t*) header);

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


static elf_load_status_t
parse_program_header(elf_header_t* header, elf_program_header_t* program_header, vfs_node_t* fs_node)
{
    uint16_t n = header->program_header_entry_no;
    uint16_t size = header->program_header_entry_size;
    
    for(uint16_t i = 0; i < n; i++)
    {
        vfs_read(fs_node, header->program_header_pos + i * size, size, (uint8_t*) program_header);

        printk("Segment type: %u, p_offset(%u), p_vaddr(0x%X), p_filesz(%u), p_memsz(%u), required_alignment(%u)\n",
        program_header->type, program_header->p_offset, program_header->p_vaddr, program_header->p_filesz, program_header->p_memsz, program_header->requied_alignment);
    }
    return ELF_HEADER_OK;
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
                elf_header_t header;
                status = parse_header(&header, fs_node);

                if (ELF_HEADER_OK == status)
                {
                    elf_program_header_t program_header;
                    status = parse_program_header(&header, &program_header, fs_node);
                }

                break;
            }
        }

        i += 1;
    }
    
    return status;
}
