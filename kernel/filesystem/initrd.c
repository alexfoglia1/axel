#include <filesystem/initrd.h>

#include <kernel/memory_manager.h>

#include <string.h>

initrd_header_t *initrd_header;     // The header.
initrd_file_header_t *file_headers; // The list of file headers.
vfs_node_t *initrd_root;            // Our root directory node.
vfs_node_t *initrd_dev;             // We also add a directory node for /dev, so we can mount devfs later on.
vfs_node_t *root_nodes;             // List of file nodes.
uint32_t nroot_nodes;               // Number of file nodes.

struct dirent dirent;


static uint32_t
initrd_read(vfs_node_t *node, uint32_t offset, uint32_t size, uint8_t *buffer)
{
   initrd_file_header_t header = file_headers[node->inode];
   if (offset > header.length)
       return 0;
   if (offset+size > header.length)
       size = header.length-offset;
   memcpy(buffer, (uint8_t*) (header.offset+offset), size);
   return size;
}


static struct dirent*
initrd_readdir(vfs_node_t *node, uint32_t index)
{
   if (node == initrd_root && index == 0)
   {
     memcpy(dirent.name, "dev", 3);
     dirent.name[3] = 0; // Make sure the string is NULL-terminated.
     dirent.ino = 0;
     return &dirent;
   }

   if (index - 1 >= nroot_nodes)
       return 0;
   memcpy(dirent.name, root_nodes[index-1].name, strlen(root_nodes[index-1].name));
   dirent.name[strlen(root_nodes[index-1].name)] = 0; // Make sure the string is NULL-terminated.
   dirent.ino = root_nodes[index-1].inode;
   return &dirent;
}


static vfs_node_t*
initrd_finddir(vfs_node_t *node, char *name)
{
   if (node == initrd_root &&
       !memcmp(name, "dev", 3) )
       return initrd_dev;

   uint32_t i;
   for (i = 0; i < nroot_nodes; i++)
       if (!memcmp(name, root_nodes[i].name, strlen(root_nodes[i].name)))
           return &root_nodes[i];
   return 0;
}


vfs_node_t*
initrd_init(uint32_t location)
{
   // Initialise the main and file header pointers and populate the root directory.
   initrd_header = (initrd_header_t*) location;
   file_headers = (initrd_file_header_t*) (location+sizeof(initrd_header_t));

   // Initialise the root directory.
   initrd_root = (vfs_node_t*)kmalloc(sizeof(vfs_node_t));

   memset(&initrd_root->name, 0x00, 128);
   memcpy(initrd_root->name, "initrd", 7);
   initrd_root->perm_mask = 0;
   initrd_root->user_id = 0;
   initrd_root->group_id = 0;
   initrd_root->inode = 0;
   initrd_root->length = 0;
   initrd_root->flags = FS_DIRECTORY;
   initrd_root->read = 0;
   initrd_root->write = 0;
   initrd_root->open = 0;
   initrd_root->close = 0;
   initrd_root->read_dir = &initrd_readdir;
   initrd_root->find_dir = &initrd_finddir;
   initrd_root->ptr = 0;
   initrd_root->impl_defined_n = 0;

   // Initialise the /dev directory (required!)
   initrd_dev = (vfs_node_t*)kmalloc(sizeof(vfs_node_t));
   memset(&initrd_dev->name, 0x00, 128);
   memcpy(initrd_dev->name, "dev", 3);
   initrd_dev->perm_mask = 0;
   initrd_dev->user_id = 0;
   initrd_dev->user_id = 0;
   initrd_dev->inode = 0;
   initrd_dev->length = 0;
   initrd_dev->flags = FS_DIRECTORY;
   initrd_dev->read = 0;
   initrd_dev->write = 0;
   initrd_dev->open = 0;
   initrd_dev->close = 0;
   initrd_dev->read_dir = &initrd_readdir;
   initrd_dev->find_dir = &initrd_finddir;
   initrd_dev->ptr = 0;
   initrd_dev->impl_defined_n = 0;

   root_nodes = (vfs_node_t*)kmalloc(sizeof(vfs_node_t) * initrd_header->nfiles);
   nroot_nodes = initrd_header->nfiles;

   // For every file...
   uint32_t i;
   for (i = 0; i < initrd_header->nfiles; i++)
   {
       // Edit the file's header - currently it holds the file offset
       // relative to the start of the ramdisk. We want it relative to the start
       // of memory.
       file_headers[i].offset += location;
       // Create a new file node.
       memcpy(root_nodes[i].name, &file_headers[i].name, strlen(file_headers[i].name));
       root_nodes[i].perm_mask = root_nodes[i].user_id = root_nodes[i].group_id = 0;
       root_nodes[i].length = file_headers[i].length;
       root_nodes[i].inode = i;
       root_nodes[i].flags = FS_FILE;
       root_nodes[i].read = &initrd_read;
       root_nodes[i].write = 0;
       root_nodes[i].read_dir = 0;
       root_nodes[i].find_dir = 0;
       root_nodes[i].open = 0;
       root_nodes[i].close = 0;
       root_nodes[i].impl_defined_n = 0;
   }

   return initrd_root;
}


vfs_node_t*
initrd_get_root()
{
    return initrd_root;
}