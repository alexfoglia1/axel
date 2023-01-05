#!/bin/sh
set -e
. ./env-build.sh

echo "Generating $OSNAME iso . . ."
if [ ! -f sysroot/boot/$OSNAME.kernel ]; then
  echo "Could not find $OSNAME binaries, make sure you have compiled them correctly"
  exit 1
fi

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/$OSNAME.kernel isodir/boot/$OSNAME.kernel
cp sysroot/boot/$OSNAME.initrd isodir/boot/$OSNAME.initrd
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "$OSNAME" {
	multiboot /boot/$OSNAME.kernel
        module /boot/$OSNAME.initrd
}
EOF
grub-mkrescue -o $OSNAME.iso isodir

echo "Generated ${PWD}/$OSNAME.iso"
