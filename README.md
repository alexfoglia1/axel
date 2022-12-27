# AXEL OS

Skeleton project of an hobbyst x86 operating system development.

## Repository Structure

The codebase has the following structure

    kernel/
           include/
                   kernel: headers containing the Hardware Abstraction Layer (HAL)
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
                              isr : headers containing interrupt service routines signatures
    kernel/
           interrupts/: implementation of interrupt service routines
 

    libc/
         include: headers containing the C-standard library interface
    libc/
         stdio: reimplementation of the C stdio library
    libc/
         stdlib: reimplementation of the C stdlib library
    libc/
         string: reimplementation of the C string library

    
    common/
           include/
                   common: headers containing functions which are intended to be general purpose and accessible by every OS module
    common/
           common: implementation of general purpose functions


    sysroot: The AXEL-OS system root, it is generated during the build process and it contains kernel binary and a minimal initial filesystem
    

In order to debug core kernel functions using GDB, one can use the "debug" project, located in
    
    debug

This sub-project is a cmake project and depends on the OS sources, except for the x86 specific implementation of the HAL, for which there is the custom stabbed implementation described above.
Its entry point is located inside

    debug/debug/main.c

Inside this source file, one can debug kernel functions one per one, or in an integrated context, depending on the developer necessities.

## How to build AXEL

The hosted development environment is an x86_64 machine running Ubuntu 22.04 LTS.
An x86 gcc cross compiler and binutils shall be present in your $PATH environment variable to compile AXEL.
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

One can either flash the axel.iso file in a USB drive and boot it on a real machine or use a virtual environment.
I personally use the virtual machine QEMU:

    qemu-system-i386 axel.iso

## How to launch AXEL debugging project

Open a terminal inside ./debug folder and type

    mkdir build
    cd build
    cmake -DCMAKE_BUILD_TYPE=Debug ..
    make all

    gdb axel-kernel-debug
