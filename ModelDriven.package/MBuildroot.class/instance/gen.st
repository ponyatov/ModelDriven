code generation
gen
	" fill makefile contents "
	self genMakefile.
	" autogen target code "
	mk gen.
	" write masks "
	self genGitIgnore.
	" generate configs "
	self genConfig .
