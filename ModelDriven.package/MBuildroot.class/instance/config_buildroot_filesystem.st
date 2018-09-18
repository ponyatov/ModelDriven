config generation
config_buildroot_filesystem
	| lf s |
	lf := String lf.
	s :=  lf,'# Filesystem ',lf,lf.
	s := s , 'BR2_TARGET_ROOTFS_CPIO=y',lf,'BR2_TARGET_ROOTFS_CPIO_GZIP=y',lf,'BR2_TARGET_ROOTFS_CPIO_UIMAGE=y',lf.
	^ s