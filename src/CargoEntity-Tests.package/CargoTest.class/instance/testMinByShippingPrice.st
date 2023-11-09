tests - comparing
testMinByShippingPrice

	cargo1 weight: 1.0; transportDistance: 1.0.
	cargo2 weight: 2.0; transportDistance: 2.0.
	self assert: (cargo1 minByShippingPrice: cargo2) equals: cargo1