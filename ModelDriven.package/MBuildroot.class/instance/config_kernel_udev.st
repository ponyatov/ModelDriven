config generation
config_kernel_udev
	| lf s |
	lf := String lf.
	s := '## udev ',lf,lf.
	s := s,'CONFIG_UEVENT_HELPER=y', lf,'CONFIG_DEVTMPFS=y',lf,'CONFIG_DEVTMPFS_MOUNT=y',lf,lf.
	^ s