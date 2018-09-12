config generation
config_kernel_hw
	| lf s |
	lf := String lf.
	s := super config_kernel_hw .
	s := s, 'CONFIG_ARCH_NUC970=y',lf,'CONFIG_CPU_NUC970=y',lf.
	s := s, 'CONFIG_BOARD_TOMATO=y',lf,'CONFIG_INITRAMFS_SOURCE=""',lf,'CONFIG_VFP=n',lf.
	s := s,lf.
	^ s