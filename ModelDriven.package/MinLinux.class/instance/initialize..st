initialization
initialize: aName
	" Linux OS instance "
	super initialize: aName .
	" build file tree will be packaged to ~/tmp/ "
	filetree := MPackage  from: aName .
