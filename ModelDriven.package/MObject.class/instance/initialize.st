initialization
initialize
	| s |
	s    := self class name asString asLowercase.
	type := s copyFrom: 2 to: s size.
	attr := Dictionary new.
	nest := OrderedCollection new.