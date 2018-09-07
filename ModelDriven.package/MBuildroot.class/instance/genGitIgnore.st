code generation
genGitIgnore
	| lf |
	lf := String lf.
	( dir / '.gitignore' ) writeStream
		nextPutAll: ( '*~' ,  lf,  '*.swp' ,  lf ,  lf ) ;
		nextPutAll: ( 'gz' ,  lf , 'src' ,  lf , 'tmp' ,  lf , lf ) ;
		nextPutAll: ( self buildroot ) ;
	close.