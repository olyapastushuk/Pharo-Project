comparing
= aCargo
	"Equality operator for comparing two cargos by weight"
	self class = aCargo class ifFalse: [ ^ false ].
	^ super = aCargo & (self discount = aCargo discount)