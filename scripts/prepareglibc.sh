#!/bin/sh
cd ..
echo "
$(cat HACPAHO)
cd \$ksd
git clone --depth 1 https://sourceware.org/git/glibc
cd glibc
git pull
mkdir buildd
cd buildd
pwd
../configure --libdir=/lib --prefix=/usr
make -j8
make DESTDIR=\$fsd install
" | sh
