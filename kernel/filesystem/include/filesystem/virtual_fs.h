#ifndef _VIRT_FS_H
#define _VIRT_FS_H

#include <stdint.h>

#define FS_FILE        0x01
#define FS_DIRECTORY   0x02
#define FS_CHARDEVICE  0x03
#define FS_BLOCKDEVICE 0x04
#define FS_PIPE        0x05
#define FS_SYMLINK     0x06
#define FS_MOUNTPOINT  0x08 // Is the file an active mountpoint?

#define __FS_IS_DIR__(node)((FS_DIRECTORY == (node->flags & 0x07)) ? 0x01 : 0x00 )

struct dirent // One of these is returned by the readdir call, according to POSIX.
{
  char name[128]; // Filename.
  uint32_t ino;   // Inode number. Required by POSIX.
};

struct vfs_node;

typedef uint32_t (*read_functor_t)  (struct vfs_node*, uint32_t, uint32_t, uint8_t*);
typedef uint32_t (*write_functor_t) (struct vfs_node*, uint32_t, uint32_t, uint8_t*);

typedef void (*open_functor_t)  (struct vfs_node*);
typedef void (*close_functor_t) (struct vfs_node*);

typedef struct dirent   *(*read_dir_functor_t) (struct vfs_node*, uint32_t);
typedef struct vfs_node *(*find_dir_functor_t) (struct vfs_node*, char *name);

typedef struct vfs_node
{
    char name[128];

    uint32_t perm_mask;
    uint32_t user_id;
    uint32_t group_id;
    uint32_t flags;
    uint32_t inode;
    uint32_t length;
    uint32_t impl_defined_n;

    read_functor_t read;
    write_functor_t write;
    open_functor_t open;
    close_functor_t close;
    read_dir_functor_t read_dir;
    find_dir_functor_t find_dir;

    struct vfs_node* ptr;
} vfs_node_t;

extern vfs_node_t *fs_root; // The root of the filesystem.

uint32_t vfs_read(vfs_node_t *node, uint32_t offset, uint32_t size, uint8_t *buffer);
uint32_t vfs_write(vfs_node_t *node, uint32_t offset, uint32_t size, uint8_t *buffer);
void vfs_open(vfs_node_t *node, uint8_t read, uint8_t write);
void vfs_close(vfs_node_t *node);
struct dirent* vfs_read_dir(vfs_node_t *node, uint32_t index);
vfs_node_t* vfs_find_dir(vfs_node_t *node, char *name);

#endif