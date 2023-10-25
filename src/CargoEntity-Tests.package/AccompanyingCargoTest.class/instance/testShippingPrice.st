tests
testShippingPrice

	| c |
	c := AccompanyingCargo new
		     weight: 5.0;
		     transportDistance: 5.0;
		     discount: 0.2.
	self
		assert: c shippingPrice
		equals:
		Cargo deliveryCost * 25.0 - (Cargo deliveryCost * 25.0 * 0.2)