# AXEL OS

Skeleton project of an hobbyst x86 operating system development.

## Repository Structure

The codebase has the following structure

    kernel/
           include/
                   kernel/
                          arch: headers containing the Hardware Abstraction Layer (HAL)
    kernel/
           arch/
                i686: x86 specific implementation of the HAL
    kernel/
           arch/
                debug: stabbed implementation of the HAL, it is intended to run on the dev machine for step-by-step debugging of kernel functions
    kernel/
           kernel: actual AXEL OS kernel code
    kernel/
           interrupts/
                      include/
                              interrupts : headers containing interrupt service routines signatures
    kernel/
           interrupts: implementation of interrupt service routines
    kernel/
           drivers/
                   include/
                           drivers : headers containing external device driver routines signatures
    kernel/
           drivers: implementation of device drivers (Keyboard, timer, mouse...)

    kernel/
           syscall/
                   include/
                           syscall : system calls signatures
    kernel/
           syscall: system call interrupts routines

   
    kernel/
           controllers: implementation of IO controllers (PIC, PS2, USB...)
    kernel/
           controllers/
                       include/
                               controllers: headers containing IO controllers routines signatures
 
    kernel/
           common/
                 include/
                         common: headers containing functions which are intended to be general purpose and accessible by every OS module
    kernel/
           common/
                  common: implementation of general purpose functions

    libc/
         include: headers containing the C-standard library interface
    libc/
         stdio: reimplementation of the C stdio library
    libc/
         stdlib: reimplementation of the C stdlib library
    libc/
         string: reimplementation of the C string library
    libc/
         unistd: reimplementation of the C unistd library, which contains an interface to system calls


    sysroot: The AXEL-OS system root, it is generated during the build process and it contains kernel binary and a minimal initial filesystem
    

In order to debug core kernel functions using GDB, one can use the "debug" project, located in
    
    debug

This sub-project is a cmake project and depends on the OS sources, except for the x86 specific implementation of the HAL, for which there is the custom stabbed implementation described above.
Its entry point is located inside

    debug/debug/main.c

Inside this source file, one can debug kernel functions one per one, or in an integrated context, depending on the developer necessities.

## How to build AXEL

The hosted development environment is an x86_64 machine running Ubuntu 22.04 LTS.
An x86 gcc cross compiler and binutils shall be present in the $PATH environment variable to compile AXEL.
Refer to [this guide](https://wiki.osdev.org/GCC_Cross-Compiler) to get one.

The build process is automated through:

    build.sh   : builds the kernel binary
    clean.sh   : clean the latest build files
    rebuild.sh : clean and builds the kernel binary

## How to generate AXEL ISO

The iso generation process is automated in the script:

    mkiso.sh   : it generates axel.iso, a flashable OS iso usable for both real hardware and virtual machines

 Note that xorriso tool is needed for this purpose. If you are running under a debian-based linux distro, simply type

     sudo apt install xorriso

## How to launch AXEL                

One can either

    
1. flash the axel.iso file in a USB drive and boot it on a real machine
2. use a virtual environment such as qemu to launch the iso
3. On a unix physical machine, just add the axel.kernel compiled file under /boot directory and change the /boot/grub/grub.cfg to boot axel


I personally use the virtual machine QEMU:

    qemu-system-i386 axel.iso

## How to launch AXEL debugging project

Open a terminal inside ./debug folder and type

    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Debug ..
    make all

    gdb axel-kernel-debug
