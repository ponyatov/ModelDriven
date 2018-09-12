code generation
genGitIgnore
	| lf s |
	lf := String lf.
	s := '*~' ,  lf,  '*.swp' ,  lf ,  lf .
	s := s, 'gz' ,  lf , 'src' ,  lf , 'tmp' ,  lf , lf .
	s := s, self buildroot , lf.
	^ s
