code generation
config_ulibc_br
	| lf s |
	lf := String lf.
	s :=     'BR2_TOOLCHAIN_USES_UCLIBC=y',lf,'BR2_TOOLCHAIN_BUILDROOT_UCLIBC=y',lf.
	s := s, 'BR2_TOOLCHAIN_BUILDROOT_LIBC="uclibc"',lf.
	s := s,'BR2_UCLIBC_CONFIG_FRAGMENT_FILES="$(TOPDIR)/ulibc.config"',lf.
	s := s, 'BR2_PTHREADS_NATIVE=y',lf , 'BR2_UCLIBC_INSTALL_UTILS=y', lf.
	^ s