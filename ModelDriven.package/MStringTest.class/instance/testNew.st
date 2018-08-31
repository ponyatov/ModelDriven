tests
testNew
	| s |
	s := MString from: 'text'.
	self assert: ( s val )  equals: 'text'.
	self assert: ( s val class )  equals: ByteString .
	self assert: ( s tag )  equals: 'string'.
	self assert: ( s tag class )  equals: ByteString .
