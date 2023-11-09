tests - calculating
testShippingPrice

	accoCargo1 weight: 6.0; transportDistance: 5.0; discount: 20.
	self assert: accoCargo1 shippingPrice equals: Cargo deliveryCost * 24.0