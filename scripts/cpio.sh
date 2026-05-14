#!/bin/sh
cd ..
echo "
$(cat HACPAHO)
cd \$fsd
rm \$ksd/init.cpio
find . | cpio -H newc -o >"\$ksd/init.cpio"

cd \$kernelsrcd

make isoimage FDARGS="initrd=/init.cpio" FDINITRD="\$ksd/init.cpio" -j$(nproc)
echo "\$kernelsrcd"
pwd
" | sh
