#!/bin/sh
set -e

echo "Generating axel iso . . ."
if [ ! -f sysroot/boot/axel.kernel ]; then
  echo "Could not find axel binaries, make sure you have compiled them correctly"
  exit 1
fi

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/axel.kernel isodir/boot/axel.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "axel" {
	multiboot /boot/axel.kernel
}
EOF
grub-mkrescue -o axel.iso isodir

echo "Generated ${PWD}/axel.iso"
