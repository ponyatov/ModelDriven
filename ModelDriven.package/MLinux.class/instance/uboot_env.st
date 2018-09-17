as yet unclassified
uboot_env
	^'
U-Boot> 
baudrate=115200
bootargs=console=ttyS0,115200n8 root=/dev/mtdblock4 ro rootfstype=sqashfs �����
bootcmd=sf probe; sf read 0x200000 0x50000 0x1b0000; bootm 0x200000
bootdelay=3
bootfile=uImage
botargs=console=ttyS0,115200n8 root=/dev/mtdblock4 ro rootfstype=sqashfs
delenv=env default -a -f; saveenv
ethact=emac
ethaddr=00:00:00:11:66:88
ipaddr=192.168.63.85
mmc_boot=setenv bootargs ''console=ttyS0,115200n8 root=/dev/mmcblk0p1 rw rootwait''; mmc dev 0; ext2load mmc 0 0x300000 /boot/uImage; bootm 0x300000
netmask=255.255.255.0
serverip=192.168.63.61
stderr=serial
stdin=serial
stdout=serial
watchdog=0

'