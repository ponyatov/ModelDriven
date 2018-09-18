initialization
initialize: aName
	super initialize: aName.
	self at: 'cross' put: ( self cross_compiler: val )