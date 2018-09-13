initialization
initialize
	| binutils0 |
	super initialize .
	
	self << ( MGroup from: 'package' ).

	self / #package << ( MGroup from: 'host') .
	binutils0 := MLinuxSource from: 'binutils0' .
	self/ #package / #host << ( binutils0 ).
	self/ #package / #host << ( MLinuxSource from: 'libgmp0' ).
	self/ #package / #host << ( MLinuxSource from: 'libmpfr00' ).
	self/ #package / #host << ( MLinuxSource from: 'libmpc0' ).
	self/ #package / #host << ( MLinuxSource from: 'gcc0' ).
	
	self / #package << ( MGroup from: 'target') .	
	
	self << ( MGroup from: 'file' ).

	self / #file << ( LMakefile from: 'Makefile' ).
	self / #file << ( LkConfig from: 'buildroot.config' ).
	self / #file << ( LkConfig from: 'kernel.config' ).
	self / #file << ( LkConfig from: 'ulibc.config' ).
	self / #file << ( LkConfig from: 'busybox.config' ).
	