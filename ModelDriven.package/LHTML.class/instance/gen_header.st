code generation
gen_header
	| lf |
	lf := String lf.
	^ '<!--', lf, super gen_header , '-->' , lf.