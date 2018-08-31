tests
testNew
	| s |
	s := MSymbol from: #symsym.
	self assert: ( s val )  equals: #symsym.
	self assert: ( s val class )  equals: ByteSymbol .
	self assert: ( s tag )  equals: 'symbol'.
	self assert: ( s tag class )  equals: ByteString .
