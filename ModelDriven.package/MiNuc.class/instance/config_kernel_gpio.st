config generation
config_kernel_gpio
	| lf s |
	lf := String lf.
	s := super config_kernel_gpio.
	s := s,'CONFIG_PINCTRL_NUC970=y',lf.
	^ s