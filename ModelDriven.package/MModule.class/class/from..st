instance creation
from: aName
	| obj dirname |
	obj := super from: aName.
	dirname := '/tmp/' , obj val.
	obj dir: (FileSystem disk ensureCreateDirectory: dirname ).
	^ obj
	