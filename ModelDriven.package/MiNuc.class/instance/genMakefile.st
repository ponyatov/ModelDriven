code generation
genMakefile
	| src nuc9 lf tab git |
	lf := String lf.	tab := String tab.
	super genMakefile .
	src := mk at: 'src'.
	nuc9 := 'NUC970_Linux_Kernel/README'.
	src push: ( ( src pop val ) , ' ' , nuc9 ) asMObject .
	git := 'git@github.com:ponyatov/NUC970_Linux_Kernel.git'.
	src push: ( lf, nuc9 , ':' , lf , tab , 'git clone --depth=1 ' , git , lf ) asMObject .
