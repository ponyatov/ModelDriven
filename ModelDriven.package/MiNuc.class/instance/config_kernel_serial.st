config generation
config_kernel_serial
	| lf s |
	lf := String lf.
	s := super config_kernel_serial .
	s := s,'CONFIG_SERIAL_NUC970=y',lf,'SERIAL_NUC970_CONSOLE=y',lf.
	(1 to: 11) do: [ :i | s := s,'CONFIG_NUC970_UART',i asString,'=y',lf. ].
	
	^ s