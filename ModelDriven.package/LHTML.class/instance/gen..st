code generation
gen: package
	( package dir / ( val , '.html' )  )  writeStream 
		nextPutAll: ( self gen_header );
	close.
	
	self inspect.