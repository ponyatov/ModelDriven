accessing
pop
	| s |
	s := nest last.
	nest removeLast.
	^ s