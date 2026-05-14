#!/bin/sh
cd ..
echo "
$(cat HACPAHO)
mkdir \$bind/static

gcc zinit/main.c -o \$bind/init &
gcc zshell/main.c -o \$bind/zshell &

gcc zinit/main.c -static -o \$bind/static/init &
gcc zshell/main.c -static -o \$bind/static/zshell &

ldd bin/*
ldd bin/static/*
"
