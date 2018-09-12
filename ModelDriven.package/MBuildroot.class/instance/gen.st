code generation
gen
	super gen.
	" write masks "
	( dir / '.gitignore' ) writeStream
		nextPutAll: self genGitIgnore; 
	close.
	" generate configs "
	self genConfig .
