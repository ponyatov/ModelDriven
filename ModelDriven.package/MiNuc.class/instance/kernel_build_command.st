code generation
kernel_build_command
	| lf tab |
	lf := String lf. tab := String tab.
	^ 'cd ',self custom_kernel_path ,' ; make ARCH=arm distclean ', self config_kernel_defconfig , lf,
	tab , 'cat $< >> ', self custom_kernel_path , '/.config', lf,
	tab , 'cd ', self custom_kernel_path , ' ; make ARCH=arm menuconfig',lf,
	tab , 'cd ', self custom_kernel_path , ' ; make ARCH=arm ',lf