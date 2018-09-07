code generation
genMakefile
	" (re)fill makefile parameters "
	| vars cmds down rules lf tab src brgz brsrc build brconfig clean |
	lf := String lf.
	tab := String tab.
	" directories "
	vars := MMakeSection from: 'directories' . mk at: 'vars' put: vars.
	vars push: ( ( LMakeVar  from: 'CWD' ) push: '$(CURDIR)' asMObject ).
	vars push: ( ( LMakeVar  from: 'GZ' ) push: '$(CWD)/gz' asMObject ).
	vars push: ( ( LMakeVar  from: 'SRC' ) push: '$(CWD)/src' asMObject ).
	vars push: ( ( LMakeVar  from: 'TMP' ) push: '$(CWD)/tmp' asMObject ).
	vars push: (  lf , 'dirs: $(GZ)' , lf , '$(GZ):' , lf , tab , 'ln -fs ~/gz $@') asMObject.
	" commands "
	cmds := MMakeSection from: 'commands'. mk at: 'cmds' put: cmds.
	cmds push: 'WGET = wget -c --no-check-certificate ' asMObject .
	" download "
	down := MMakeSection from: 'download'. mk at: 'down' put: down.
	down push: '.PHONY: gz' asMObject .
	brgz := '$(GZ)/' , self buildroot_gz.
	down push: ('gz: ' ,  brgz , lf , brgz , ' : ' ) asMObject .
	down push: ( tab , '$(WGET) -O $@ ' , self buildroot_url ) asMObject.
	" rules "
	rules := MMakeSection from: 'rules'. mk at: 'rules' put: rules.
	rules push: ( '%/README: $(GZ)/%.tar.gz' , lf , tab , 'tar zx < $< && touch $@' ) asMObject.
	" source code "
	src := MMakeSection from: 'source code'. mk at: 'src' put: src.
	brsrc := self buildroot , '/README'.
	src  push: ( '.PHONY: src' , lf , 'src: ' , brsrc ) asMObject .
	" build "
	build := MMakeSection from: 'build'. mk at: 'build' put: build.
	build push: '.PHONY: build' asMObject .
	brconfig := self buildroot , '/.config'.
	build push: ( 'build: ' , brconfig ) asMObject .
	build push: ( tab , 'cd ' , self buildroot , ' ; make menuconfig') asMObject .
	build push: ( brconfig , ' : buildroot.config ' , brsrc ) asMObject .
	build push: ( tab , 'cd ' , self buildroot , ' ; make allnoconfig' , lf , tab , 'cat $< >> $@' ) asMObject.
	" clean "
	clean := MMakeSection from: 'clean'. mk at: 'clean' put: clean.
	clean push: ( '.PHONY: clean' , lf , 'clean:' , lf , tab , 'cd ' , self buildroot , ' ; make distclean' ) asMObject .