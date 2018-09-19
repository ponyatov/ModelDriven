initialization
initialize: v
	super initialize: v.
	html := LhtmlTag from: #HTML . self // html. self at: #html put: html.
	title := LhtmlTag from: #TITLE. html // title.
"
	head := LhtmlTag from: #HEAD. html << head.
	title := LhtmlTag from: #TITLE. head << title. title push: ( val asMObject ).
	body := LhtmlTag  from: #BODY. html << body.
	"