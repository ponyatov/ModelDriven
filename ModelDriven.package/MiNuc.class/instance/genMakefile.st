code generation
genMakefile
	| src nuc9 lf tab git |
	lf := String lf.	tab := String tab.
	super genMakefile .
	src := mk at: 'src'.
	nuc9 := self custom_kernel_path , '/README'.
	src push: ( ( src pop val ) , ' ' , nuc9 ) asMObject .
	git := 'git@github.com:ponyatov/',self custom_kernel_path ,'.git'.
	src push: ( lf, nuc9 , ':' , lf , tab , 'git clone --depth=1 ' , git ) asMObject .
