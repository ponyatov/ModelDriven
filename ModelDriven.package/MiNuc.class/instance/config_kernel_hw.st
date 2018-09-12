config generation
config_kernel_hw
	| lf s |
	lf := String lf.
	s := super config_kernel_hw .
"	s := s,'CONFIG_ARCH_W90X900=y',lf,'CONFIG_VFP=n',lf."
"	s := s,'CONFIG_MACH_W90P910EVB=y',lf,'CONFIG_MACH_W90P950EVB=n',lf,'CONFIG_MACH_W90N960EVB=n',lf,lf."
	^ s