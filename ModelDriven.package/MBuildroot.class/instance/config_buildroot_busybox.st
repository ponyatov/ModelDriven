config generation
config_buildroot_busybox
	| lf s |
	lf := String lf.
	s :=  lf,'# Busybox ',lf,lf.
	s := s , 'BR2_PACKAGE_BUSYBOX=y',lf,'BR2_PACKAGE_BUSYBOX_CONFIG_FRAGMENT_FILES="$(TOPDIR)/../busybox.config"',lf.
	^ s