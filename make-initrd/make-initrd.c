/* We want POSIX.1-2008 + XSI, i.e. SuSv4, features */
#define _XOPEN_SOURCE 700

/* Added on 2017-06-25:
   If the C library can support 64-bit file sizes
   and offsets, using the standard names,
   these defines tell the C library to do so. */
#define _LARGEFILE64_SOURCE
#define _FILE_OFFSET_BITS 64 

#include <stdlib.h>
#include <unistd.h>
#include <ftw.h>
#include <time.h>
#include <stdio.h>
#include <string.h>
#include <errno.h>
#include <stdbool.h>
#include <dirent.h>

/* POSIX.1 says each process has at least 20 file descriptors.
 * Three of those belong to the standard streams.
 * Here, we use a conservative estimate of 15 available;
 * assuming we use at most two for other uses in this program,
 * we should never run into any problems.
 * Most trees are shallower than that, so it is efficient.
 * Deeper trees are traversed fine, just a bit slower.
 * (Linux allows typically hundreds to thousands of open files,
 *  so you'll probably never see any issues even if you used
 *  a much higher value, say a couple of hundred, but
 *  15 is a safe, reasonable value.)
*/
#ifndef USE_FDS
#define USE_FDS 15
#endif

char files_in_dir[2048][2048];
char files_in_initrd[2048][2048];
char* prefix;
int file_idx = 0;

char* strreplace(const char* from, char* toreplace, char* replacewith, char* to)
{
    int i = 0;
    int j = 0;
    while(from[i])
    {
        if (memcmp(&from[i], toreplace, strlen(toreplace)) == 0)
        {
            memcpy(to, replacewith, strlen(replacewith));
            j += strlen(replacewith);
            i += strlen(toreplace);
        }
        else
        {
            to[j] = from[i];
            j += 1;
            i += 1;
        }

        
    }
}

int print_entry(const char *filepath, const struct stat *info,
                const int typeflag, struct FTW *pathinfo)
{
    /* const char *const filename = filepath + pathinfo->base; */
    const double bytes = (double)info->st_size; /* Not exact if large! */

    if (typeflag == FTW_SL)
    {
        char   *target;
        size_t  maxlen = 1023;
        ssize_t len;

        while (1)
        {
            target = malloc(maxlen + 1);
            if (target == NULL)
                return ENOMEM;

            len = readlink(filepath, target, maxlen);
            if (len == (ssize_t)-1)
            {
                const int saved_errno = errno;
                free(target);
                return saved_errno;
            }
            if (len >= (ssize_t)maxlen)
            {
                free(target);
                maxlen += 1024;
                continue;
            }

            target[len] = '\0';
            break;
        }

        printf(" %s -> %s\n", filepath, target);
        free(target);

    }
    else if (typeflag == FTW_F)
    {
        sprintf(files_in_dir[file_idx], "%s", filepath);
        strreplace(filepath, prefix, "", files_in_initrd[file_idx]);
        file_idx += 1;
    }
    
    return 0;
}


int build_directory_tree(const char* dirpath)
{
    int result;
    prefix = (char*)  dirpath;

    /* Invalid directory path? */
    if (dirpath == NULL || *dirpath == '\0')
        return errno = EINVAL;

    result = nftw(dirpath, print_entry, USE_FDS, FTW_PHYS);
    if (result >= 0)
        errno = result;

    return errno;
}

struct initrd_header
{
    unsigned char magic; // The magic number is there to check for consistency.
    char name[64];
    unsigned int offset; // Offset in the initrd the file starts.
    unsigned int length; // Length of the file.
};

bool write_header(int i, struct initrd_header* headers, unsigned int* offset, const char* local_path, const char* initrd_path)
{
    printf("Writing local file(%s) to initrd file(%s) at offset 0x%X\n", local_path, initrd_path, *offset);
    strcpy(headers[i].name, initrd_path);
    headers[i].offset = *offset;

    FILE* stream = fopen(local_path, "r");
    if (stream == 0)
    {
        printf("Error: file %s not found\n", local_path);
        return false;
    }

    fseek(stream, 0, SEEK_END);
    headers[i].length = ftell(stream);
    *offset += headers[i].length;
    fclose(stream);

    headers[i].magic = 0xBF;

    return true;
}

int main(char argc, char **argv)
{
    if (argc < 2)
    {
        printf("USAGE: %s [path-to-sysroot] - root directory of initrd\n", argv[0]);
        exit(1);
    }

    printf("Make initrd from directory %s\n", argv[1]);
    build_directory_tree(argv[1]);

    int nheaders = file_idx;
    struct initrd_header headers[64];

    unsigned int offset = sizeof(struct initrd_header) * 64 + sizeof(int);
    for (int i = 0; i < nheaders; i++)
    {
        write_header(i, headers, &offset, files_in_dir[i], files_in_initrd[i]);
    }
   
    FILE *wstream = fopen("./initrd.img", "w");
    unsigned char *data = (unsigned char *)malloc(offset);
    fwrite(&nheaders, sizeof(int), 1, wstream);
    fwrite(headers, sizeof(struct initrd_header), 64, wstream);
    
    for (int i = 0; i < nheaders; i++)
    {
      FILE *stream = fopen(files_in_dir[i], "r");
      unsigned char *buf = (unsigned char *)malloc(headers[i].length);
      fread(buf, 1, headers[i].length, stream);
      fwrite(buf, 1, headers[i].length, wstream);
      fclose(stream);
      free(buf);
    }
    
    fclose(wstream);
    free(data);
   
   return 0;
}
