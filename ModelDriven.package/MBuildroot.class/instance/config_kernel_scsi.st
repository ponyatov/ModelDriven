config generation
config_kernel_scsi
	| lf s |
	lf := String lf.
	s :=  lf,'## SCSI ', lf,lf.
	s := s,'CONFIG_BLK_DEV_SD=n',lf,'CONFIG_BLK_DEV_SR=n',lf,'SCSI_LOWLEVEL=n',lf,lf.
	^ s