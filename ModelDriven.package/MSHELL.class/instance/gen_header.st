code generation
gen_header
	^
	'#!/bin/sh' , String lf,
	( self gen_comment_line: 'autogened by Pharo Smalltalk / ModelDriven '  , String lf  ) ,
	( self gen_comment_line: '(c) Dmitry Ponyatov <dponyatov@gmail.com>' , String lf  ) ,
	String lf 
