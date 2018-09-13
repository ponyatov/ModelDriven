config generation
config_kernel
	| s lf ss |
	lf := String lf.
	ss := '# General setup ',lf,lf.
	s := ''.
	ss := ss, 'CONFIG_CROSS_COMPILE="',self config_toolchain,'-"',lf,lf.
	ss := ss,'CONFIG_LOCALVERSION="-icbcom-',self hostname ,'"',lf.
	ss := ss,'CONFIG_DEFAULT_HOSTNAME="',self hostname ,'"',lf,lf.
	ss := ss,'CONFIG_SWAP=n',lf.
	s := s, 'CONFIG_SYSVIPC=n',lf,'CONFIG_CROSS_MEMORY_ATTACH=n',lf.
	ss := ss,'CONFIG_CGROUPS=n',lf.
	ss := ss,lf,'CONFIG_BLK_DEV_INITRD=y',lf,lf.
	ss := ss,'CONFIG_KERNEL_GZIP=y',lf,'CONFIG_RD_GZIP=y',lf.
	#( #BZIP2 #LZMA #XZ #LZO #LZ4 ) do: [ :x | ss := ss,'CONFIG_RD_',x,'=n',lf ].
	ss := ss,lf,'CONFIG_CC_OPTIMIZE_FOR_SIZE=y',lf,'CONFIG_EMBEDDED=n',lf,'CONFIG_EXPERT=n',lf.
	ss := ss,lf,'CONFIG_MODULES=y',lf,'CONFIG_MODULE_UNLOAD=y',lf,lf.
	ss := ss, self config_kernel_block.
	ss := ss, self config_kernel_fs.
	s := s, self config_kernel_hw.
	ss := ss,'# kernel features',lf,lf.
	ss := ss,'VMSPLIT_3G=y',lf,'CONFIG_PREEMPT_VOLUNTARY=y',lf,'HZ_100=y',lf,'CONFIG_AEABI=y',lf.
	s := s,'CONFIG_HIGHMEM=n',lf,'CONFIG_COMPACTION=y',lf,lf.
	s := s,'# boot options',lf,lf,'CONFIG_EFI=n',lf,lf.
	s := s,'# bin formats',lf,lf,'CONFIG_BINFMT_ELF=y',lf,'CONFIG_CORE_DUMP_DEFAULT_ELF_HEADERS=y',lf.
	s := s,'CONFIG_BINFMT_SCRIPT=y',lf,lf.
	s := s,'# power management',lf,lf.
	s := s,'CONFIG_SUSPEND=n',lf,'CONFIG_PM=n',lf,'CONFIG_CPU_FREQ=n',lf,'CONFIG_CPU_IDLE=n',lf,lf.
	ss := ss, self config_kernel_net.
	ss := ss, self config_kernel_wifi.
	s := s,'# device drivers',lf,lf.
	s := s,'CONFIG_DMA_CMA=y',lf,lf.
	ss := ss, self config_kernel_udev .
	s := s, self config_kernel_mtd .
	s := s, self config_kernel_scsi .
	s := s, self config_kernel_ata .
	ss := ss, self config_kernel_usb .
	ss := ss,'## debug',lf,lf,'CONFIG_PRINTK_TIME=y',lf,lf.
	^ ss