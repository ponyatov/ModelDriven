cross-compiler
uboot_build
	^ 'PATH=/home/dpon/ASDU/buildroot-2018.05.2/output/host/bin:/home/dpon/ASDU/buildroot-2018.05.2/output/host/sbin:$PATH LANG=C make ARCH=arm CROSS_COMPILE=arm-buildroot-linux-uclibcgnueabi- INSTALL_MOD_PATH=/home/dpon/ASDU/modules INSTALL_MOD_STRIP=1 zImage'