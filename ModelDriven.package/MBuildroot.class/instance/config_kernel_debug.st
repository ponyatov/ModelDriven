config generation
config_kernel_debug
	| lf s |
	lf := String lf.
	s := lf,'# debug ',lf,lf.
	s := s,'CONFIG_PRINTK_TIME=y',lf,'CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y',lf.
	s := s,'CONFIG_MAGIC_SYSRQ=y',lf,'CONFIG_DEBUG_KERNEL=y',lf,'CONFIG_DEBUG_PREEMPT=y',lf.
	s := s,'CONFIG_KGDB=y',lf,'CONFIG_KGDB_SERIAL_CONSOLE=y',lf,'CONFIG_KGDB_KDB=y',lf.
	^ s