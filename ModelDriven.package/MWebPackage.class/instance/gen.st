code generation
gen
	" build file tree will be packaged to user ~/tmp "
	dir := ( FileLocator home / #tmp / val ) ensureCreateDirectory.
	
	html gen: self.
	css gen: self.
	js gen: self.