code generation
config_CPU
	| lf |
	lf := String lf.
	^ 'BR2_arm=y' , lf , 'BR2_arm926t=y' , lf , 'BR2_ARM_ENABLE_VFP=n' , lf