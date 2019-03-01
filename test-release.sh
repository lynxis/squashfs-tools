#!/bin/bash


if [[ "$TRAVIS_OS_NAME" != "osx" ]] ; then exit 0 ; fi

mkdir /tmp/compile/
cd /tmp/compile/
wget https://github.com/squashfskit/squashfskit/releases/download/v4.14/squashfskit-v4.14.tar.xz

tar Jxf https://github.com/squashfskit/squashfskit/releases/download/v4.14/squashfskit-v4.14.tar.xz
cd ./squashfskit-v4.14/squashfs-tools/

make
