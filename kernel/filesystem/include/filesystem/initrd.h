#ifndef _INITRD_H
#define _INITRD_H

#include <filesystem/virtual_fs.h>

typedef struct
{
   uint32_t nfiles; // The number of files in the ramdisk.
} initrd_header_t;


typedef struct
{
   uint8_t magic;     // Magic number, for error checking.
   char name[64];     // Filename.
   uint32_t offset;   // Offset in the initrd that the file starts.
   uint32_t length;   // Length of the file.
} initrd_file_header_t;


// Initialises the initial ramdisk. It gets passed the address of the multiboot module,
// and returns a completed filesystem node.
vfs_node_t *initrd_init(uint32_t location);


#endif