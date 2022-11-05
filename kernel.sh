

eselect kernel list
# select the newest kernel

cd /usr/src/linux
make mrproper
make oldconfig
make -j12 && make modules_install && make install && grub-mkconfig -o /boot/grub/grub.cfg
