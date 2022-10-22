#!/bin/bash

mkdir --parents /mnt/gentoo/etc/portage/repos.conf
mount --types proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
mount --bind /run /mnt/gentoo/run
mount --make-slave /mnt/gentoo/run 
chroot /mnt/gentoo /bin/bash 

# Post Chroot
# source /etc/profile
# export PS1="(chroot) ${PS1}"
# mount /dev/sda1 /boot
