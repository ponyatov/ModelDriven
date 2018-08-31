tests
testNew
	| s |
	s := MFloat  from: 12.34.
	self assert: ( s val )  equals: 12.34.
	self assert: ( s val class )  equals: SmallFloat64   .
	self assert: ( s tag )  equals: 'float'.
	self assert: ( s tag class )  equals: ByteString .
