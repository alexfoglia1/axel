#!/bin/sh
set -e
. ./env-build.sh

echo "Building $OSNAME . . ."
mkdir -p "$SYSROOT"

for PROJECT in $SYSTEM_HEADER_PROJECTS; do
  (cd $PROJECT && DESTDIR="$SYSROOT" $MAKE install-headers)
done

for PROJECT in $PROJECTS; do
  (cd $PROJECT && DESTDIR="$SYSROOT" $MAKE install)
done

for PROJECT in $SWBASE; do
  echo "Building sw-base $PROJECT"
  (cd sw-base/$PROJECT && DESTDIR="$SYSROOT" $MAKE install)
done

echo "Done!"
