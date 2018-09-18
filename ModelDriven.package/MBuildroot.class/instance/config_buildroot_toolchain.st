config generation
config_buildroot_toolchain
	| lf s |
	lf := String lf.
	s := lf , '# toolchain ', lf.
	s := s, lf,'BR2_TOOLCHAIN_BUILDROOT_UCLIBC=y',lf.
	s := s,'BR2_TOOLCHAIN_BUILDROOT=y',lf.
	s := s,'BR2_TOOLCHAIN_BUILDROOT_VENDOR="icbcom"',lf.
	s := s,'BR2_KERNEL_HEADERS_AS_KERNEL=y',lf.
	s := s,'BR2_UCLIBC_CONFIG_FRAGMENT_FILES="$(TOPDIR)/../ulibc.config"',lf.
	s := s,'BR2_UCLIBC_INSTALL_UTILS=y',lf.
	s := s,'BR2_BINUTILS_VERSION_2_29_X=y',lf.
	s := s,'BR2_GCC_VERSION_6_X=y',lf.
	s := s,'BR2_BINUTILS_EXTRA_CONFIG_OPTIONS="--disable-nls"',lf.
	s := s,'BR2_EXTRA_GCC_CONFIG_OPTIONS="--disable-nls"',lf.
	s := s,'BR2_GCC_ENABLE_LTO=y',lf,'BR2_GCC_ENABLE_GRAPHITE=y',lf.
	^ s