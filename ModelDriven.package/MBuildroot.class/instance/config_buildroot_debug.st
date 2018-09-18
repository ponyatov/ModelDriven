config generation
config_buildroot_debug
	| lf s |
	lf := String lf.
	s := lf, '# debug',lf,lf.
	s := s,'BR2_PACKAGE_HOST_GDB=y',lf.
	s := s,'BR2_PTHREAD_DEBUG=y',lf.
	s := s,'BR2_PACKAGE_GDB=y',lf.
	^ s