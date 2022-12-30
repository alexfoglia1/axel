. ./env-build.sh
./clean.sh
./rebuild.sh
./mkiso.sh
qemu-system-i386 -boot d -cdrom axel.iso -m 8M -serial file:serial.log

