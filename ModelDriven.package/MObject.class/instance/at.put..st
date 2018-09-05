accessing
at: key put: object
	" set object slot "
	attr at: key put: object .
	" return self modified object "
	^ self