initialization
initialize
	" type must be taken from the class name "
	" type должен быть получен из имени класса "
	| s | 
	s := self class name asLowercase .
	" copy lowercased name from 2nd char "
	" скопировать имя начиная со второго символа "
	tag := s copyFrom: 2 to: s size.
	" create empty attributes "
	" создать пустой словарь атрибутов  "
	attr := Dictionary new.
	" empty nested elements vector "	
	" пустой вектор вложенных элементов  "	
	nest := OrderedCollection new.
	" register self in object pool "
	MObject pool add: self.
