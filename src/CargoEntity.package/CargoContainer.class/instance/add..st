adding
add: aCargo
	"Adds a cargo instance to a collection. Returns the argument, not the receiver."

	self checkObject: aCargo.
	memory add: aCargo.
	^ aCargo