code generation
genGitIgnore
	| lf |
	lf := String lf.
	^ super genGitIgnore , lf, 
	self custom_kernel_path , '/' , lf,
	"'linux-3.18.122/' , lf, "
	'linux-3.10-nuc970/' , lf