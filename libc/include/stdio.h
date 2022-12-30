#ifndef _STDIO_H
#define _STDIO_H 1

#include <sys/cdefs.h>

#define EOF (-1)
#define EOS (0)

#ifdef __cplusplus
extern "C" {
#endif

void __redirect_printf__(char* buf);


int printf(const char* __restrict, ...);
int putchar(int);
int puts(const char*);

#define sprintf(dst, format, ...) do { __redirect_printf__(dst); printf(format, ##__VA_ARGS__); __redirect_printf__(0x00); } while(0)

#ifdef __cplusplus
}
#endif

#endif
