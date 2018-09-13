config generation
config_buildroot_kernel
	| lf s |
	lf := String lf.
	s := lf , '# Kernel ', lf,lf.
	s := s, 'BR2_LINUX_KERNEL=y',lf , 'BR2_LINUX_KERNEL_CONFIG_FRAGMENT_FILES="$(TOPDIR)/../kernel.config"',lf.
	s := s, 'BR2_LINUX_KERNEL_CUSTOM_TARBALL=y',lf.
	s := s,'BR2_KERNEL_HEADERS_AS_KERNEL=y',lf,'BR2_PACKAGE_HOST_LINUX_HEADERS_CUSTOM_3_18=y',lf.
	s := s , 'BR2_LINUX_KERNEL_CUSTOM_TARBALL_LOCATION="$(TOPDIR)/../gz/linux-',self linux_ver,'.tar.gz"',lf.
	s := s,'BR2_PACKAGE_LINUX_TOOLS_GPIO=n',lf.
	s := s,'BR2_LINUX_KERNEL_USE_DEFCONFIG=y',lf,'BR2_LINUX_KERNEL_DEFCONFIG="nuc976_tomato"',lf.
	^ s