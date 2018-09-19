config generation
config_kernel_net
	| lf s |
	lf := String lf.
	s := super config_kernel_net ,lf.
	s := s, 'CONFIG_NET_VENDOR_NUVOTON=y', lf.
	s := s,'CONFIG_NUC970_ETH0=y',lf.
	s := s,'CONFIG_NUC970_ETH1=m',lf.
	^ s