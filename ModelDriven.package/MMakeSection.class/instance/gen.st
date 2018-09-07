code generation
gen
	| out |
	out :=  '# ', val asString , String lf , String lf.
	nest do: [ :i | out := out , i gen , String lf ].
	out := out , String lf.
	^ out