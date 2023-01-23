CFLAGS?=-O2 -g
CPPFLAGS?=
LDFLAGS?=
LIBS?=

DESTDIR?=
PREFIX?=/usr/local
EXEC_PREFIX?=$(PREFIX)
BOOTDIR?=$(EXEC_PREFIX)/boot
INCLUDEDIR?=$(PREFIX)/include

CFLAGS:=$(CFLAGS) -ffreestanding -Wall -Wextra -mgeneral-regs-only
CPPFLAGS:=$(CPPFLAGS)
LDFLAGS:=$(LDFLAGS)
LIBS:=$(LIBS) -nostdlib -lk -lgcc

BASH_OBJS=\
bash.o \
main.o \

CFLAGS:=$(CFLAGS) $(KERNEL_ARCH_CFLAGS)
CPPFLAGS:=$(CPPFLAGS) $(KERNEL_ARCH_CPPFLAGS)
LDFLAGS:=$(LDFLAGS) $(KERNEL_ARCH_LDFLAGS)
LIBS:=$(LIBS) $(KERNEL_ARCH_LIBS)

OBJS=\
$(BASH_OBJS)

LINK_LIST=\
$(LDFLAGS) \
$(BASH_OBJS) \
$(LIBS) \

.PHONY: all clean install install-kernel
.SUFFIXES: .o .c

all: bash.out

bash.out: $(OBJS)
	$(CC) -o $@ $(CFLAGS) $(LINK_LIST)

.c.o:
	$(CC) -MD -c $< -o $@ -std=gnu11 $(CFLAGS) $(CPPFLAGS)


clean:
	rm -f bash.out
	rm -f $(OBJS) *.o */*.o */*/*.o
	rm -f $(OBJS:.o=.d) *.d */*.d */*/*.d

install: install-binaries

install-binaries: bash.out
	mkdir -p $(DESTDIR)$(BINDIR)
	cp bash.out $(DESTDIR)$(BINDIR)

-include $(OBJS:.o=.d)
