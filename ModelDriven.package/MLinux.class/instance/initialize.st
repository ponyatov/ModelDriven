initialization
initialize
	super initialize .
	self << ( MGroup from: 'package' ).
	self << ( MGroup from: 'file' ).

	self / 'package' << ( MGroup from: 'host') .
	self / 'package' << ( MGroup from: 'target') .	