initialization
initialize: aName
	super initialize: aName .
	dir := ( FileLocator home / 'tmp' / val ) ensureCreateDirectory.
	mk := (dir / 'Makefile') "writeStream".
		