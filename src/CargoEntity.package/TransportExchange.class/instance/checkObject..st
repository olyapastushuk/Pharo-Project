validation
checkObject: anObject
	"Checks of anObject is a kind of Cargo class."

	(anObject isKindOf: Cargo) ifFalse: [
		^ self error:
			  'CargoContainer must contain only Cargo class instances or its subclasses.' ]