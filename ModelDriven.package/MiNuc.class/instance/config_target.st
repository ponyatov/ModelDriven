code generation
config_target
	| lf s |
	lf := String lf.
	s := super config_target .
	" ARM core "
	s :=  s, 'BR2_arm=y' , lf , 'BR2_arm926t=y' , lf , 'BR2_ARM_INSTRUCTIONS_ARM=y' , lf.
	" Floating point "
	s := s , 'BR2_ARM_ENABLE_VFP=n' , lf , 'BR2_SOFT_FLOAT=y' , lf.
	^ s