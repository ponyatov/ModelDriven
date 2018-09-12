config generation
config_kernel_wifi
	| lf |
	lf := String lf.
	^ '## no WIFI',lf,lf,'CONFIG_WLAN=n',lf,'CONFIG_WIRELESS=n',lf,lf