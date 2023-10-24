comparing
minByShippingPrice: aCargo
	"Returns a cargo with lesser shipping price."

	self shippingPrice < aCargo shippingPrice
		ifTrue: [ ^ self ]
		ifFalse: [ ^ aCargo ]