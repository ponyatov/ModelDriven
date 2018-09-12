config generation
config_kernel_block
	| lf s |
	lf := String lf.
	s := '# block layer ',lf,lf.
	s := s,'CONFIG_BLOCK=y',lf,'CONFIG_LBDAF=y',lf,'CONFIG_BLK_DEV_BSG=y',lf.
	s := s,'CONFIG_TMPFS=y',lf.
	"'CONFIG_BLK_DEBUG_FS=n',lf.
	s := s,'CONFIG_BLK_CMDLINE_PARSER=y',lf,,'CONFIG_CMDLINE_PARTITION=y',lf."
	s := s, 'CONFIG_PARTITION_ADVANCED=y',lf,'CONFIG_MSDOS_PARTITION=y',lf,'CONFIG_EFI_PARTITION=n',lf,lf.
	s := s,'## block drivers ',lf,lf.
	s := s,'CONFIG_BLK_DEV=y',lf,'CONFIG_BLK_DEV_LOOP=n',lf,'CONFIG_BLK_DEV_RAM=n',lf,lf. ",'CONFIG_VIRTIO_BLK=n',lf,lf."
	^ s