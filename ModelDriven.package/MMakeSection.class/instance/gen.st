code generation
gen
	| out |
	out :=  '# ', val asString , String cr , String cr.
	nest do: [ :i |
		out := out , i gen.
		 ].
	out := out , String cr.
	^ out