code generation
config_system
	| lf s |
	lf := String lf.
	s := lf , '# System ', lf,lf.
	s := s, 'BR2_TARGET_GENERIC_HOSTNAME="', self hostname , '"',lf.
	s := s, 'BR2_TARGET_GENERIC_ISSUE="(c) Icbcom [http://icbcom.ru] / ModelDriven autogen /"',lf.
	s := s, 'BR2_ROOTFS_DEVICE_CREATION_DYNAMIC_MDEV=y',lf.
	s := s, 'BR2_ROOTFS_OVERLAY="$(TOPDIR)/../files"',lf.
	^ s