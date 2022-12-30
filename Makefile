MAKE := make
all:
    $(MAKE) -C ./kernel
    $(MAKE) -C ./libc
