cmake_minimum_required(VERSION 3.12)

project(axel-kernel-debug)

add_compile_definitions(__DEBUG_STUB__)
add_compile_definitions(__is_libk)

add_executable(
axel-kernel-debug

#---- ARCHITECTURE SPECIFIC SOURCES ----#
${CMAKE_SOURCE_DIR}/../kernel/arch/debug/tty.c
${CMAKE_SOURCE_DIR}/../kernel/arch/debug/vga.c

#---- LIBC ERRNO  ----#
${CMAKE_SOURCE_DIR}/../libc/errno/errno.c

#---- LIBC STDIO  ----#
${CMAKE_SOURCE_DIR}/../libc/stdio/printf.c
${CMAKE_SOURCE_DIR}/../libc/stdio/putchar.c
${CMAKE_SOURCE_DIR}/../libc/stdio/puts.c

#---- LIBC STDLIB ----#
${CMAKE_SOURCE_DIR}/../libc/stdlib/abort.c

#---- LIBC STRING ----#
${CMAKE_SOURCE_DIR}/../libc/string/memcmp.c
${CMAKE_SOURCE_DIR}/../libc/string/memcpy.c
${CMAKE_SOURCE_DIR}/../libc/string/memmove.c
${CMAKE_SOURCE_DIR}/../libc/string/memset.c
${CMAKE_SOURCE_DIR}/../libc/string/strlen.c

#---- EXEC MAIN   ----#
${CMAKE_SOURCE_DIR}/debug/main.c
)

target_include_directories(axel-kernel-debug PUBLIC

${CMAKE_SOURCE_DIR}/../kernel/include
${CMAKE_SOURCE_DIR}/../libc/include
)

add_compile_options(-Wl,nostdlib -Wl,nodefaultlibs)