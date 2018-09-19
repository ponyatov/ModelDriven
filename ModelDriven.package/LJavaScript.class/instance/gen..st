code generation
gen: package
	( package dir / ( val , '.js' )  ) writeStream close.
	