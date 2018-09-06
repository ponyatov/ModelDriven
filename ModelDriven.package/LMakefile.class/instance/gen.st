code generation
gen
	| stream |
	stream := file writeStream.
	stream nextPutAll: ( self gen_header ).
	stream nextPutAll: ( ( self at: 'vars' ) gen  ).
	stream nextPutAll: ( ( self at: 'cmds' ) gen  ).
	stream nextPutAll: ( ( self at: 'down' ) gen  ).
	stream close.