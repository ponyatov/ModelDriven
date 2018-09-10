config generation
config_kernel_mtd
	| lf s |
	lf := String lf.
	s := '## mtd ',lf,lf.
	s := s,'CONFIG_MTD=y',lf,'CONFIG_MTD_CMDLINE_PARTS=y',lf,'CONFIG_MTD_NAND=y',lf.
	^ s