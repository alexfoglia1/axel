set -e
. ./env-build.sh

mkdir -p ${SYSROOT}

for PROJECT in ${PROJECTS}; do
  (cd $PROJECT && make clean)
done

rm -fr isodir
rm -fr sysroot
rm -fr axel.iso
