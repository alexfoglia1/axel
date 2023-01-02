cmake_minimum_required(VERSION 3.12)

project(axel-kernel-debug)

add_compile_definitions(__DEBUG_STUB__)
add_compile_definitions(__ADDR_64BIT__)
add_compile_definitions(__is_libk)

add_executable(
axel-kernel-debug

#---- ARCHITECTURE SPECIFIC SOURCES ----#
${CMAKE_SOURCE_DIR}/../kernel/arch/debug/tty.c
${CMAKE_SOURCE_DIR}/../kernel/arch/debug/vga.c
${CMAKE_SOURCE_DIR}/../kernel/arch/debug/io.c
${CMAKE_SOURCE_DIR}/../kernel/arch/debug/gdt.c
${CMAKE_SOURCE_DIR}/../kernel/arch/debug/idt.c
${CMAKE_SOURCE_DIR}/../kernel/arch/debug/cpuid.c

#---- COMMON      ----#
${CMAKE_SOURCE_DIR}/../kernel/common/utils.c

#---- LIBC ERRNO  ----#
${CMAKE_SOURCE_DIR}/../libc/errno/errno.c

#---- LIBC STDIO  ----#
${CMAKE_SOURCE_DIR}/../libc/stdio/printf.c
${CMAKE_SOURCE_DIR}/../libc/stdio/putchar.c
${CMAKE_SOURCE_DIR}/../libc/stdio/puts.c

#---- LIBC STDLIB ----#
${CMAKE_SOURCE_DIR}/../libc/stdlib/abort.c

#---- LIBC UNISTD ----#
${CMAKE_SOURCE_DIR}/../libc/unistd/read.c
${CMAKE_SOURCE_DIR}/../libc/unistd/write.c

#---- LIBC STRING ----#
${CMAKE_SOURCE_DIR}/../libc/string/memcmp.c
${CMAKE_SOURCE_DIR}/../libc/string/memcpy.c
${CMAKE_SOURCE_DIR}/../libc/string/memmove.c
${CMAKE_SOURCE_DIR}/../libc/string/memset.c
${CMAKE_SOURCE_DIR}/../libc/string/strlen.c

#---- INT.SRV.    ----#
${CMAKE_SOURCE_DIR}/../kernel/interrupts/isr.c

#---- DRIVERS     ----#
${CMAKE_SOURCE_DIR}/../kernel/drivers/pit.c
${CMAKE_SOURCE_DIR}/../kernel/drivers/keyboard.c

#---- CONTROLLERS ----#
${CMAKE_SOURCE_DIR}/../kernel/controllers/pic.c
${CMAKE_SOURCE_DIR}/../kernel/controllers/ps2.c
${CMAKE_SOURCE_DIR}/../kernel/controllers/com.c
${CMAKE_SOURCE_DIR}/../kernel/controllers/cmos.c
${CMAKE_SOURCE_DIR}/../kernel/controllers/acpi.c
${CMAKE_SOURCE_DIR}/../kernel/controllers/ide.c

#---- SYSCALLS   ----#
${CMAKE_SOURCE_DIR}/../kernel/syscall/sys_write.c
${CMAKE_SOURCE_DIR}/../kernel/syscall/sys_read.c

#---- KERNEL MAIN ----#
${CMAKE_SOURCE_DIR}/../kernel/kernel/paging.c
${CMAKE_SOURCE_DIR}/../kernel/kernel/kernel.c

#---- EXEC MAIN   ----#
${CMAKE_SOURCE_DIR}/debug/main.c
)

target_include_directories(axel-kernel-debug PUBLIC

${CMAKE_SOURCE_DIR}/../kernel/include
${CMAKE_SOURCE_DIR}/../kernel/interrupts/include
${CMAKE_SOURCE_DIR}/../kernel/drivers/include
${CMAKE_SOURCE_DIR}/../kernel/controllers/include
${CMAKE_SOURCE_DIR}/../kernel/common/include
${CMAKE_SOURCE_DIR}/../kernel/syscall/include
${CMAKE_SOURCE_DIR}/../libc/include
)

add_compile_options(-Wl,nostdlib -Wl,nodefaultlibs)
