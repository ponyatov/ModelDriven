printing
dump: depth
	" dump any object in tree form "
	| s |
	s := ( self pad: depth ) , ( self head ).
	nest do: [ :x | s := s , ( x dump: (depth+1) ) ].
	^ s