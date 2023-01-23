set -e
. ./env-build.sh

mkdir -p ${SYSROOT}

for PROJECT in ${PROJECTS}; do
  (cd $PROJECT && make clean)
done

for PROJECT in ${SWBASE}; do
  (cd sw-base/${PROJECT} && make clean)
done

rm -fr isodir
rm -fr sysroot
