initialization
genMakefile
	" (re)fill makefile parameters "
	| vars cmds down |
	vars := MMakeSection from: 'directories' . mk at: 'vars' put: vars.
	vars push: ( ( LMakeVar  from: 'CWD' ) push: '$(notdir $(CURDIR))' asMObject ).
	vars push: ( ( LMakeVar  from: 'GZ' ) push: '$(CWD)/gz' asMObject  ).
	cmds := MMakeSection from: 'commands'. mk at: 'cmds' put: cmds.
	down := MMakeSection from: 'download'. mk at: 'down' put: down.
