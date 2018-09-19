initialization
initialize: name
	super initialize: name.
	css := LCSS from: val. self at: #css put: css.
	js := LJavaScript  from: val. self at: #js put: js.
	html := LHTML from: val. self at: #html put: html.
	html at: #css put: css.
	html at: #js put: js.
	
