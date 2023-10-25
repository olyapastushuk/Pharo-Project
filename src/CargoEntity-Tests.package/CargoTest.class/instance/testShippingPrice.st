tests
testShippingPrice

	| c |
	c := Cargo new
		     weight: 5.0;
		     transportDistance: 5.0.
	self assert: c shippingPrice equals: Cargo deliveryCost * 25.0