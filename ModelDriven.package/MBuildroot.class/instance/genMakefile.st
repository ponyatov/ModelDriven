code generation
genMakefile
	" (re)fill makefile parameters "
	| lf tab  brgz brsrc  brconfig  |
	
	lf := String lf. tab := String tab.
	" generate core emLinux makefile structure "
	super genMakefile .

	" download "
	down push: '.PHONY: gz' asMObject .
	brgz := '$(GZ)/' , self buildroot_gz.
	down push: ('gz: ' ,  brgz , lf , brgz , ' : ' ) asMObject .
	down push: ( tab , '$(WGET) -O $@ ' , self buildroot_url ) asMObject.
	" rules "
	rules push: ( '%/README: $(GZ)/%.tar.gz' , lf , tab , 'tar zx < $< && touch $@' ) asMObject.
	" source code "
	brsrc := self buildroot , '/README'.
	src  push: ( '.PHONY: src' , lf , 'src: ' , brsrc ) asMObject .
	" build "
	build push: '.PHONY: build' asMObject .
	brconfig := self buildroot , '/.config'.
	build push: ( 'build: ' , brconfig ) asMObject .
	build push: ( tab , 'cd ' , self buildroot , ' ; make menuconfig && make') asMObject .
	build push: ( brconfig , ' : buildroot.config ' , brsrc ) asMObject .
	build push: ( tab , 'cd ' , self buildroot , ' ; make allnoconfig ' , lf , tab , 'cat $< >> $@' ) asMObject.
	" kernel "
	kernel push: ( '.PHONY: kernel' , lf , 'kernel: kernel.config' , lf , tab , self kernel_build_command , lf ) asMObject .
	" clean "
	clean push: ( '.PHONY: clean' , lf , 'clean:' , lf , tab , 'cd ' , self buildroot , ' ; make clean' ) asMObject .