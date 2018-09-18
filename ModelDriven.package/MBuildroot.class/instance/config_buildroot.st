config generation
config_buildroot
	| lf s |
	lf := String lf.
	s := ''.
	s := s,self config_buildroot_target .
	s := s,self config_buildroot_build .
	s := s, self config_buildroot_toolchain .
	s := s, self config_buildroot_system .
	s := s, self config_buildroot_kernel .
	s := s, self config_buildroot_busybox .
	s := s, self config_buildroot_filesystem  .
	s := s, self config_buildroot_secure .
	s := s, self config_buildroot_debug .
	^ s