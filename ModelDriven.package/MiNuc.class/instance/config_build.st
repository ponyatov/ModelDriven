code generation
config_build
	| lf |
	lf := String lf.
	^ 'BR2_CCACHE=y' , lf , 'BR2_STRIP_strip=y' , lf