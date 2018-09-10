config generation
config_kernel_br
	| lf s |
	lf := String lf.
	s := lf , '# Kernel ', lf,lf.
	s := s, 'BR2_LINUX_KERNEL=y',lf , 'BR2_LINUX_KERNEL_CONFIG_FRAGMENT_FILES="$(TOPDIR)/../kernel.config"',lf.
	s := s,'BR2_PACKAGE_LINUX_TOOLS_GPIO=y',lf.
	s := s,'BR2_LINUX_KERNEL_USE_ARCH_DEFAULT_CONFIG=y',lf.
	^ s