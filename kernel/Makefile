CFLAGS?=-O2 -g
CPPFLAGS?=
LDFLAGS?=
LIBS?=

#PREFIX is the directory where $(OSNAME) binaries and headers will be installed : these are the SYSROOT subdirectories
DESTDIR?=
PREFIX?=/usr/local
EXEC_PREFIX?=$(PREFIX)
BOOTDIR?=$(EXEC_PREFIX)/boot
INCLUDEDIR?=$(PREFIX)/include

CFLAGS:=$(CFLAGS) -ffreestanding -Wall -Wextra -mgeneral-regs-only
CPPFLAGS:=$(CPPFLAGS) -D__is_kernel -Iinclude -Icommon/include -Iinterrupts/include -Idrivers/include -Icontrollers/include -Isyscall/include -Ifilesystem/include
LDFLAGS:=$(LDFLAGS)
LIBS:=$(LIBS) -nostdlib -lk -lgcc

#x86 is the target architecture for the moment 
ARCHDIR=arch/i686

#My own common sources
COMMONDIR=common

#Syscall sources
SYSCALLDIR=syscall

#Controllers sources
CONTRDIR=controllers

#Interrupt service routines
ISRDIR=interrupts

#Hardware drivers
DRIVERDIR=drivers

#Filesystem
FSDIR=filesystem

KERNEL_ARCH_CFLAGS=
KERNEL_ARCH_CPPFLAGS=
KERNEL_ARCH_LDFLAGS=
KERNEL_ARCH_LIBS=

KERNEL_ARCH_OBJS=\
$(ARCHDIR)/boot.o \
$(ARCHDIR)/vga.o \
$(ARCHDIR)/tty.o \
$(ARCHDIR)/io.o \
$(ARCHDIR)/gdt.o \
$(ARCHDIR)/idt.o \
$(ARCHDIR)/cpuid.o \
$(ARCHDIR)/cpuid_supported.o \
$(ARCHDIR)/enable_paging.o \
$(ARCHDIR)/load_page_directory.o \
$(ARCHDIR)/copy_page_physical.o \
$(ARCHDIR)/flush_tlb.o \
$(ARCHDIR)/read_instruction_pointer.o \
$(ARCHDIR)/context_switch.o \
$(ISRDIR)/isr.o \
$(SYSCALLDIR)/sys_write.o \
$(SYSCALLDIR)/sys_read.o \
$(CONTRDIR)/pic.o \
$(CONTRDIR)/ps2.o \
$(CONTRDIR)/com.o \
$(CONTRDIR)/cmos.o \
$(CONTRDIR)/acpi.o \
$(CONTRDIR)/ide.o \
$(DRIVERDIR)/pit.o \
$(DRIVERDIR)/keyboard.o \
$(FSDIR)/virtual_fs.o \
$(FSDIR)/initrd.o \
$(COMMONDIR)/utils.o \
$(COMMONDIR)/ordered_array.o \


CFLAGS:=$(CFLAGS) $(KERNEL_ARCH_CFLAGS)
CPPFLAGS:=$(CPPFLAGS) $(KERNEL_ARCH_CPPFLAGS)
LDFLAGS:=$(LDFLAGS) $(KERNEL_ARCH_LDFLAGS)
LIBS:=$(LIBS) $(KERNEL_ARCH_LIBS)

KERNEL_OBJS=\
$(KERNEL_ARCH_OBJS) \
kernel/kheap.o \
kernel/memory_manager.o \
kernel/paging.o \
kernel/multitasking.o \
kernel/scheduler.o \
kernel/kernel.o \

OBJS=\
$(ARCHDIR)/crti.o \
$(ARCHDIR)/crtbegin.o \
$(KERNEL_OBJS) \
$(ARCHDIR)/crtend.o \
$(ARCHDIR)/crtn.o \

LINK_LIST=\
$(LDFLAGS) \
$(ARCHDIR)/crti.o \
$(ARCHDIR)/crtbegin.o \
$(KERNEL_OBJS) \
$(LIBS) \
$(ARCHDIR)/crtend.o \
$(ARCHDIR)/crtn.o \

.PHONY: all clean install install-headers install-kernel
.SUFFIXES: .o .c .S

all: $(OSNAME).kernel

$(OSNAME).kernel: $(OBJS) $(ARCHDIR)/linker.ld
	$(CC) -T $(ARCHDIR)/linker.ld -o $@ $(CFLAGS) $(LINK_LIST)
	grub-file --is-x86-multiboot $(OSNAME).kernel

$(ARCHDIR)/crtbegin.o $(ARCHDIR)/crtend.o:
	OBJ=`$(CC) $(CFLAGS) $(LDFLAGS) -print-file-name=$(@F)` && cp "$$OBJ" $@

.c.o:
	$(CC) -MD -c $< -o $@ -std=gnu11 $(CFLAGS) $(CPPFLAGS)

.S.o:
	$(CC) -MD -c $< -o $@ $(CFLAGS) $(CPPFLAGS)

clean:
	rm -f $(OSNAME).kernel
	rm -f $(OBJS) *.o */*.o */*/*.o
	rm -f $(OBJS:.o=.d) *.d */*.d */*/*.d

install: install-headers install-kernel

install-headers:
	mkdir -p $(DESTDIR)$(INCLUDEDIR)
	cp -R --preserve=timestamps include/. $(DESTDIR)$(INCLUDEDIR)/.

install-kernel: $(OSNAME).kernel
	mkdir -p $(DESTDIR)$(BOOTDIR)
	cp $(OSNAME).kernel $(DESTDIR)$(BOOTDIR)
	cp ./filesystem/initrd.img $(DESTDIR)$(BOOTDIR)/$(OSNAME).initrd

-include $(OBJS:.o=.d)
