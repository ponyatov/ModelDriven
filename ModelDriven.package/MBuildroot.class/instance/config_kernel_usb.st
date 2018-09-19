config generation
config_kernel_usb
	| lf s |
	lf := String lf.
	s :=  '## USB ', lf,lf.
	s := s,'CONFIG_USB_SUPPORT=y',lf,'CONFIG_USB=y',lf.
	s := s,'CONFIG_USB_ANNOUNCE_NEW_DEVICES=y',lf.
	s := s,'CONFIG_USB_DEFAULT_PERSIST=y',lf.
	s := s,'CONFIG_USB_EHCI_HCD=y',lf,'CONFIG_USB_OHCI_HCD=y',lf,lf.
	s := s,'CONFIG_USB_ACM=m',lf.
	s := s,'CONFIG_USB_STORAGE=y',lf.
	s := s,'CONFIG_USB_SERIAL=m',lf,'CONFIG_USB_SERIAL_GENERIC=y',lf.
	s := s,'CONFIG_USB_SERIAL_CP210X=m',lf,'CONFIG_USB_SERIAL_FTDI_SIO=m',lf.
	s := s,'CONFIG_USB_SERIAL_PL2303=m',lf,'CONFIG_USB_SERIAL_OPTION=m',lf.
	^ s,lf.