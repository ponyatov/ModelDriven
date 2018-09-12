code generation
genMakefile
	" (re)fill makefile parameters "
	| lf tab |
	lf := String lf.
	tab := String tab.
	
	" directories "
	dirs := MMakeSection from: 'directories' . mk at: 'dirs' put: dirs.
	" commands "
	cmds := MMakeSection from: 'commands'. mk at: 'cmds' put: cmds.
	" download "
	down := MMakeSection from: 'download'. mk at: 'down' put: down.
	" rules "
	rules := MMakeSection from: 'rules'. mk at: 'rules' put: rules.
	" source code "
	src := MMakeSection from: 'source code'. mk at: 'src' put: src.
	" build "
	build := MMakeSection from: 'build'. mk at: 'build' put: build.
	" kernel "
	kernel := MMakeSection from: 'kernel'. mk at: 'kernel' put: kernel.
	" clean "
	clean := MMakeSection from: 'clean'. mk at: 'clean' put: clean.
	
	
	" directories "
	dirs push: ( ( LMakeVar  from: 'CWD' ) push: '$(CURDIR)' asMObject ).
	dirs push: ( ( LMakeVar  from: 'GZ' ) push: '$(CWD)/gz' asMObject ).
	dirs push: ( ( LMakeVar  from: 'SRC' ) push: '$(CWD)/src' asMObject ).
	dirs push: ( ( LMakeVar  from: 'TMP' ) push: '$(CWD)/tmp' asMObject ).
	
	dirs push: ( ( LMakeVar  from: 'HOST' ) push: '$(CWD)/host' asMObject ).
	dirs push: ( ( LMakeVar  from: 'ROOT' ) push: '$(CWD)/root' asMObject ).
	
	dirs push: ( lf,'dirs: $(GZ) $(SRC) $(TMP)' , lf ) asMObject .
	dirs push: ( '$(GZ):',lf,tab,'ln -fs ~/gz $@' , lf ) asMObject .
	dirs push: ( '$(TMP):',lf,tab,'ln -fs ~/tmp $@' , lf ) asMObject .
	dirs push: ( '$(SRC):',lf,tab,'mkdir -p $@' , lf ) asMObject .
	"vars push: (  lf , 'dirs: $(GZ) $(SRC)',lf,tab,'mkdir -p files' , lf ) asMObject.
	vars push: (  lf , 'dirs: $(GZ) $(SRC)',lf,tab,'mkdir -p files' , lf ) asMObject.
	vars push: ('$(GZ):' , lf , tab , 'ln -fs ~/gz $@') asMObject."
	
	" commands "
	cmds push: 'WGET = wget -c --no-check-certificate ' asMObject .
	
	" download "
	down push: '.PHONY: gz' asMObject .
	down push: ( '$(GZ)/' , self binutils_gz , ' : ', lf , tab , '$(WGET) -O $@ ' , self binutils_url  ) asMObject.