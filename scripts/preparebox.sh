#!/bin/sh
cd ..
echo "
$(cat HACPAHO)
cd \$ksd

git clone --depth 1 https://github.com/landley/toybox
cd toybox
git pull
cp \$cfgd/toybox/.config .
pwd
make -j$(nproc)
PREFIX=\$fsd make install
" | sh
