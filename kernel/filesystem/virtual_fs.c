#include <filesystem/virtual_fs.h>


vfs_node_t* fs_root = 0x00;


uint32_t
vfs_read(vfs_node_t *node, uint32_t offset, uint32_t size, uint8_t *buffer)
{
    return node->read ? node->read(node, offset, size, buffer) : 0x00;
}


uint32_t
vfs_write(vfs_node_t *node, uint32_t offset, uint32_t size, uint8_t *buffer)
{
    return node->write ? node->write(node, offset, size, buffer) : 0x00;
}


void
vfs_open(vfs_node_t *node, uint8_t read, uint8_t write)
{
    return node->open ? node->open(node) : 0x00;
}


void
vfs_close(vfs_node_t *node)
{
    return node->close ? node->close(node) : 0x00;
}


struct dirent*
vfs_read_dir(vfs_node_t *node, uint32_t index)
{
    return __FS_IS_DIR__(node) && node->read_dir ? node->read_dir(node, index) : 0x00;
}


vfs_node_t* 
vfs_find_dir(vfs_node_t *node, char *name)
{
    return __FS_IS_DIR__(node) && node->find_dir ? node->find_dir(node, name) : 0x00;
}