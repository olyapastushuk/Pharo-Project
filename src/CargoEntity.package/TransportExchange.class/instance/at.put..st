accessing
at: anIndex put: aCargo
	"Put a cargo object at the specified position. Check if the given object is a kind of Cargo class, throws an error otherwise."

	self checkObject: aCargo.
	memory at: anIndex put: aCargo.
	^ aCargo