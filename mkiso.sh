#!/bin/sh
. ./env-build.sh
set -e

echo "Generating $OSNAME iso . . ."

if [ ! -f sysroot/boot/$OSNAME.kernel ]; then
  echo "Could not find $OSNAME binaries, make sure you have compiled them correctly"
  exit 1
fi

echo "Generating $OSNAME.initrd"

if [ ! -f make-initrd/mkinitrd ]; then
  echo "Compiling mkinitrd"
  gcc make-initrd/make-initrd.c -o make-initrd/mkinitrd
else
  echo "Found mkinitrd"
fi

cd make-initrd
./mkinitrd $SYSROOT
cd ..

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/$OSNAME.kernel isodir/boot/$OSNAME.kernel
mv make-initrd/initrd.img isodir/boot/$OSNAME.initrd

cat > isodir/boot/grub/grub.cfg << EOF
menuentry "$OSNAME" {
	multiboot /boot/$OSNAME.kernel
        module /boot/$OSNAME.initrd.gz
}
EOF
grub-mkrescue -o $OSNAME.iso isodir

echo "Generat/ed ${PWD}/$OSNAME.iso"
