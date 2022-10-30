### fetching the code and attempt to build (should fail on linux kernel 6+)
# emerge =nvidia-drivers-470.141.03


### disabling greater versions systemwide
mkdir /etc/portage/package.mask/x11-drivers/
echo ">=x11-drivers/nvidia-drivers-471" >> /etc/portage/package.mask/x11-drivers/nvidia-drivers


### patching driver
# on build failure then procede following patching commands below
cd /var/db/repos/gentoo/x11-drivers/nvidia-drivers
ebuild ./nvidia-drivers-470.141.03.ebuild manifest clean unpack
cd /var/tmp/portage/x11-drivers/nvidia-drivers-470.141.03/work/kernel
wget https://gitlab.com/herecura/packages/nvidia-470xx-dkms/-/raw/9c88952c1504e32ba3656cb0e2afd9286d2a763d/kernel-6.0.patch
patch --verbose --backup --strip=1 --input=./kernel-6.0.patch
rm kernel-6.0.patch
cd ..
./nvidia-installer

### when in the `nvidia-installer's` prompt just say `yes` each time it asks and wait
### on finish do a `reboot`
### patched driver should be running
