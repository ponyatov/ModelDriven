config generation
config_kernel_serial
	| lf s |
	lf := String lf.
	s :=  lf,'## serial ', lf,lf.
	s := s,'CONFIG_SERIAL_8250=y',lf,'CONFIG_SERIAL_8250_CONSOLE=y',lf,lf.
	^ s.