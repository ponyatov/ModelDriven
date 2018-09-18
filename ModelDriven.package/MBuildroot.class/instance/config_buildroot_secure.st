config generation
config_buildroot_secure
	| lf s |
	lf := String lf.
	s := lf , '# Security Hardening' , lf , lf.
	self config_isSecure ifTrue: [
		s := s, 'BR2_RELRO_FULL=y', lf.
		s := s, 'BR2_TOOLCHAIN_BUILDROOT_USE_SSP=y', lf , 'BR2_SSP_ALL=y',lf.
	].
	^ s