code generation
gen
	^ val asString , String tab , '= ' , ( nest at: 1 ) gen , String cr.