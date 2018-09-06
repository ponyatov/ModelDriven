code generation
gen_header
	^
	( self gen_comment_line: 'this file was autogened by Pharo / ModelDriven ' , String cr ) ,
	( self gen_comment_line: '(c) Dmitry Ponyatov <dponyatov@gmail.com>' , String cr  ) ,
	String cr 
