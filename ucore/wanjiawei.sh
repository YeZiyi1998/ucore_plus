make clean
make ARCH=mips BOARD=thinpad defconfig
make sfsimg
make
dd if=/dev/zero of=XX count=16384
dd if=obj/kernel/ucore-kernel-initrd of=XX conv=notrunc