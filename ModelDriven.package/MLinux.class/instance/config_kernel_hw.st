config generation
config_kernel_hw
	| lf s |
	lf := String lf.
	s := '# system type (hw) ',lf,lf.
	s := s,'CONFIG_MMU=y',lf.
	^ s