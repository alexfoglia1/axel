. ./env-build.sh
./clean.sh
./rebuild.sh
./mkiso.sh
qemu-system-i386 -m 128M -serial file:serial.log axel.iso

