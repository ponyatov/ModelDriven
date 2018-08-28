tests
testNew
	| s |
	s := MObject from: 'hello'.
	self assert: ( s val )  equals: 'hello'.
	self assert: ( s val class )  equals: ByteString .
	" type is keyword in many languages, fix it"
	" type во многих языках ключевое слово, исправим"
	self assert: ( s tag )  equals: 'object'.
	self assert: ( s tag class )  equals: ByteString .
	" check empty containters "
	self assert: ( s nest isEmpty ) .
	self assert: ( s nest class ) equals: OrderedCollection .
	self assert: ( s attr isEmpty ).
	self assert: ( s attr class ) equals: Dictionary .