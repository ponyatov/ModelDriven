config generation
config_kernel_fs
	| lf s |
	lf := String lf.
	s := '# file systems ',lf,lf.
	s := s,'CONFIG_SQUASHFS=y',lf,'CONFIG_MSDOS_FS=m',lf,'CONFIG_VFAT_FS=m',lf,'CONFIG_NTFS_FS=m',lf,lf.
	^ s