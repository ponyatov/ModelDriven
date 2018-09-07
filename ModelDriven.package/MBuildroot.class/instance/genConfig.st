code generation
genConfig
	| lf |
	lf := String lf.
	( dir / 'buildroot.config' ) writeStream
		nextPutAll: self config_CPU ;
		nextPutAll: self config_build ;
	close.