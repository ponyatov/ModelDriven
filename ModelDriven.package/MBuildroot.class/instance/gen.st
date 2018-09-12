code generation
gen
	" fill makefile contents "
	self genMakefile.
	" autogen target code "
	mk gen.
	" write masks "
	( dir / '.gitignore' ) writeStream
		nextPutAll: self genGitIgnore; 
	close.
	" generate configs "
	self genConfig .
