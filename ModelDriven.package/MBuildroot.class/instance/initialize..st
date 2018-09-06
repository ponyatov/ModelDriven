initialization
initialize: aName
	" Linux OS instance "
	super initialize: aName .
	" build file tree will be packaged to ~/tmp/ "
	dir := ( FileLocator home / 'tmp' / val ) ensureCreateDirectory.
	" clone BuildRoot to target directory "
	gz := ( dir / 'gz' ) ensureCreateDirectory .
	" generate build makefile "
	mk := LMakefile from: ( dir / 'Makefile' ).
	