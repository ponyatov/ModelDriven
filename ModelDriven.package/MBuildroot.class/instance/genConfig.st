code generation
genConfig
	| lf modelheader |
	lf := String lf.
	modelheader := LkConfig new gen_header .
	( dir / 'buildroot.config' ) writeStream
		nextPutAll: modelheader;
		nextPutAll: self config_target ;
		nextPutAll: self config_build ;
		nextPutAll: self config_toolchain ;
		nextPutAll: self config_system ;
		nextPutAll: self config_SecurityHardening ;
	close.
	( dir / 'ulibc.config' ) writeStream 
		nextPutAll: modelheader ;
		nextPutAll: self config_ulibc ;
	close.