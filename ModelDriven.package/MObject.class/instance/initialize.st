initialization
initialize
	| class |
	class := self class name asString asLowercase.
	type := class copyFrom: 2 to: class size.
	attr  := Dictionary new.
	nest  := OrderedCollection new.