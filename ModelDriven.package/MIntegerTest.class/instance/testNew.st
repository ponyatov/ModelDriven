tests
testNew
	| s |
	s := MInteger  from: 1234.
	self assert: ( s val )  equals: 1234.
	self assert: ( s val class )  equals: SmallInteger  .
	self assert: ( s tag )  equals: 'integer'.
	self assert: ( s tag class )  equals: ByteString .
