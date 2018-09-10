code generation
config_toolchain
	| lf s |
	lf := String lf.
	s := lf , '# Toolchain ', lf,lf.
	s := s, 'BR2_TOOLCHAIN_BUILDROOT_VENDOR="icbcom"', lf.
	s := s , self config_ulibc_br .
	s := s, 'BR2_GCC_ENABLE_LTO=y',lf,'BR2_GCC_ENABLE_GRAPHITE=y',lf.
	^ s