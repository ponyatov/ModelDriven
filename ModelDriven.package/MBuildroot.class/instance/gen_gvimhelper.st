code generation
gen_gvimhelper
	( dir / 'gvim_helper.rc' ) writeStream 
		nextPutAll: (MSHELL new gen_header ) ;
		nextPutAll: 'gvim -p Makefile buildroot.config kernel.config ulibc.config busybox.config .gitignore gvim_helper.rc', String lf ;
	close.
