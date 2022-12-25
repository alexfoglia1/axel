#!/bin/sh
set -e

echo "Generating $OSNAME iso . . ."
if [ ! -f sysroot/boot/$OSNAME.kernel ]; then
  echo "Could not find $OSNAME binaries, make sure you have compiled them correctly"
  exit 1
fi

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/$OSNAME.kernel isodir/boot/$OSNAME.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "$OSNAME" {
	multiboot /boot/$OSNAME.kernel
}
EOF
grub-mkrescue -o $OSNAME.iso isodir

echo "Generated ${PWD}/$OSNAME.iso"
