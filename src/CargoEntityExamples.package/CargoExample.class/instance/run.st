running
run

	self addCargoRequestAnswer ifTrue: [
		cargos addByGUI: 1.
		self run. 
		^ self ].

	self showMinByShippingPrice.
	self doubleDiscountPrices.
	self newCollectionBySenderAddress.
	self demonstrateComparisonOperators