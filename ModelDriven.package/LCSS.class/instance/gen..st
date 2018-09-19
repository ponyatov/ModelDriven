code generation
gen: package
	( package dir / ( val , '.css' )  ) writeStream close.
	