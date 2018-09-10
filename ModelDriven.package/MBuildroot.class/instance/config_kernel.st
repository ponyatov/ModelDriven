config generation
config_kernel
	| s lf |
	lf := String lf.
	s := '# General setup ',lf,lf.
	s := s,'CONFIG_LOCALVERSION="-icbcom-',self hostname ,'"',lf.
	s := s,'CONFIG_DEFAULT_HOSTNAME="',self hostname ,'"',lf,lf.
	s := s,'CONFIG_SWAP=n',lf, 'CONFIG_SYSVIPC=n',lf,'CONFIG_CROSS_MEMORY_ATTACH=n',lf.
	s := s,'CONFIG_CGROUPS=n',lf.
	s := s,lf,'CONFIG_BLK_DEV_INITRD=y',lf,lf.
	s := s,'CONFIG_KERNEL_GZIP=y',lf,'CONFIG_RD_GZIP=y',lf.
	#( #BZIP2 #LZMA #XZ #LZO #LZ4 ) do: [ :x | s := s,'CONFIG_RD_',x,'=n',lf ].
	s := s,lf,'CONFIG_CC_OPTIMIZE_FOR_SIZE=y',lf,'CONFIG_EMBEDDED=n',lf,'CONFIG_EXPERT=n',lf.
	s := s,lf,'CONFIG_MODULES=y',lf,'CONFIG_MODULE_UNLOAD=y',lf,lf.
	s := s,'# block layer ',lf,lf.
	s := s,'CONFIG_BLOCK=y',lf,'CONFIG_LBDAF=y',lf,'CONFIG_BLK_DEV_BSG=y',lf,'CONFIG_BLK_DEBUG_FS=n',lf.
	s := s,'CONFIG_BLK_CMDLINE_PARSER=y',lf,'CONFIG_PARTITION_ADVANCED=y',lf,'CONFIG_CMDLINE_PARTITION=y',lf.
	s := s,'CONFIG_MSDOS_PARTITION=n',lf,'CONFIG_EFI_PARTITION=n',lf,lf.
	s := s, self config_kernel_hw.
	s := s,'# kernel features',lf,lf.
	s := s,'VMSPLIT_3G=y',lf,'CONFIG_PREEMPT_VOLUNTARY=y',lf,'HZ_100=y',lf,'CONFIG_AEABI=y',lf.
	s := s,'CONFIG_HIGHMEM=n',lf,'CONFIG_COMPACTION=y',lf,lf.
	s := s,'# boot options',lf,lf,'CONFIG_EFI=n',lf,lf.
	s := s,'# bin formats',lf,lf,'CONFIG_BINFMT_ELF=y',lf,'CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y',lf.
	s := s,'CONFIG_BINFMT_SCRIPT=y',lf,lf.
	s := s,'# power management',lf,lf.
	s := s,'CONFIG_SUSPEND=n',lf,'CONFIG_PM=n',lf,'CONFIG_CPU_FREQ=n',lf,'CONFIG_CPU_IDLE=n',lf,lf.
	s := s, self config_kernel_net.
	^ s