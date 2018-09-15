initialization
initialize
	super initialize .
	self << ( PVTable new
		<< ( PMethod from: 'none' )
	).