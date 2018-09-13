config generation
genConfig
	| lf modelheader |
	lf := String lf.
	modelheader := LkConfig  new gen_header .
	( dir / 'buildroot.config' ) writeStream
		nextPutAll: modelheader;
		nextPutAll: self config_target ;
		nextPutAll: self config_buildroot_build ;
		nextPutAll: self config_system ;
		nextPutAll: self config_buildroot_kernel ;
		nextPutAll: self config_busybox_br ;
		nextPutAll: self config_filesystem  ;
		nextPutAll: self config_SecurityHardening ;
	close.
	
	( dir / 'kernel.config' ) writeStream 
		nextPutAll: modelheader ;
		nextPutAll: self config_kernel ;
	close.	
		
	( dir / 'ulibc.config' ) writeStream 
		nextPutAll: modelheader ;
		nextPutAll: self config_ulibc ;
	close.
	
	( dir / 'busybox.config' ) writeStream 
		nextPutAll: modelheader ;
		nextPutAll: self config_busybox ;
	close.
	
	self gen_gvimhelper.