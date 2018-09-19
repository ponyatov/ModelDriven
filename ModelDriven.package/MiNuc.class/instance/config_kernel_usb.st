config generation
config_kernel_usb
	| lf s |
	lf := String lf.
	s := super config_kernel_usb .
	s := s,'CONFIG_USB_NUC970_EHCI=y',lf,'CONFIG_USB_NUC970_OHCI=y',lf,lf.
	" no USB power control pins"
	s := s,'NUC970_USBH_PWR_NONE=y',lf.
	s := s,'CONFIG_USB_GADGET=y',lf,'CONFIG_USB_NUC970=y',lf.
	s := s,'CONFIG_USB_G_SERIAL=y'.
	^ s