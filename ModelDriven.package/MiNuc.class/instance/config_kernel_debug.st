config generation
config_kernel_debug
	| lf s |
	lf := String lf.
	s := super config_kernel_debug.
	s := s,'CONFIG_CMDLINE_FORCE=y',lf,lf.
	^ s