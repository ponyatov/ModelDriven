code generation
gen
	| lf s |
	lf := String lf.
	" in-line <style> generator (default) "
	s := '<STYLE>',lf.
	s := s, '</STYLE>',lf.
	^ s