streaming
<< anObject
	| key |
	key := anObject val.
	key ifNil: [  key := anObject tag ].
	self at: key put: anObject.
	^ self