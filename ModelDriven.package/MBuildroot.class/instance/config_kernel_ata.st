config generation
config_kernel_ata
	| lf s |
	lf := String lf.
	s :=  '## *ATA ', lf,lf.
	s := s,'CONFIG_ATA=n',lf,lf.
	^ s