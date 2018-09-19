cross-compiler
uboot_build
	^ 'PATH=/home/dpon/ASDU/buildroot-2018.05.2/output/host/bin:/home/dpon/ASDU/buildroot-2018.05.2/output/host/sbin:$PATH LANG=C make ARCH=arm CROSS_COMPILE=arm-icbcom-linux-uclibcgnueabi- '