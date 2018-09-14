config generation
config_kernel_gpio
	| lf s |
	lf := String lf.
	^ lf,'# pin controller',lf,lf.