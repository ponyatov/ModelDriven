cross-compiler
config_kernel_debug
	| lf s |
	lf := String lf.
	s := lf,'# debug ',lf,lf.
	s := s,'CONFIG_PRINTK_TIME=y',lf,'CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y',lf.
	^ s