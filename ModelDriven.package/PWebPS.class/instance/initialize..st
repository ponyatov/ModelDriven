initialization
initialize: name
	super initialize: name.
	html := LHTML from: val. self at: #html put: html.
