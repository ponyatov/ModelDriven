config generation
config_kernel_usb
	| lf s |
	lf := String lf.
	s := super config_kernel_usb .
	s := s,'CONFIG_USB_NUC970_EHCI=y',lf,'CONFIG_USB_NUC970_OHCI=y',lf,lf.
	s := s,'CONFIG_USB_GADGET=m',lf.
	^ s