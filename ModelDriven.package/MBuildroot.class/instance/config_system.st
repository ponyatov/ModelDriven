code generation
config_system
	| lf s |
	lf := String lf.
	s := lf , '# System ', lf,lf.
	s := s, 'BR2_TARGET_GENERIC_HOSTNAME="', self hostname , '"',lf.
	s := s, 'BR2_TARGET_GENERIC_ISSUE="(c) IcbCom [http://icbcom.ru] / ModelDriven autogen /"',lf.
	^ s