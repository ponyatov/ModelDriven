code generation
gen
	| stream lf tab |
	lf := String lf. tab := String tab.
	stream := file writeStream.
	stream nextPutAll: ( self gen_header ).
	stream nextPutAll: ( '.PHONY: all' , lf , 'all: dirs gz src build' , lf , lf).
	stream nextPutAll: ( ( self at: 'vars' ) gen  ).
	stream nextPutAll: ( ( self at: 'cmds' ) gen  ).
	stream nextPutAll: ( ( self at: 'down' ) gen  ).
	stream nextPutAll: ( ( self at: 'rules' ) gen  ).
	stream nextPutAll: ( ( self at: 'src' ) gen  ).
	stream nextPutAll: ( ( self at: 'build' ) gen  ).
	stream nextPutAll: ( ( self at: 'kernel' ) gen  ).
	stream nextPutAll: ( ( self at: 'clean' ) gen  ).
	stream close.