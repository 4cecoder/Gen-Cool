

eselect kernel list
cd /usr/src/linux

make -j12 && make modules_install && make install && grub-mkconfig -o /boot/grub/grub.cfg
