initialization
initialize: aName
	" embedded Linux OS instance "
	super initialize: aName .
	" build file tree will be packaged to ~/tmp/ "
	dir := ( FileLocator home / val ) ensureCreateDirectory.
	" generate build makefile "
	mk := LMakefile from: ( dir / 'Makefile' ).
	