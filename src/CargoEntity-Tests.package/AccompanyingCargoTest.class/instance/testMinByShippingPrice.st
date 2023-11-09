tests - comparing
testMinByShippingPrice

	accoCargo1 weight: 1.0; transportDistance: 1.0.
	accoCargo2 weight: 1.0; transportDistance: 1.0; discount: 50.
	self assert: (accoCargo1 minByShippingPrice: accoCargo2) equals: accoCargo2