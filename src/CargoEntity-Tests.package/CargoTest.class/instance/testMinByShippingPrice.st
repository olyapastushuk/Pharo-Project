tests
testMinByShippingPrice

	| c1 c2 |
	c1 := Cargo new
		      weight: 10.0;
		      transportDistance: 15.0.
	c2 := Cargo new
		      weight: 20.0;
		      transportDistance: 25.0.
	self assert: (c1 minByShippingPrice: c2) equals: c1.
	c2 transportDistance: 1.0.
	self assert: (c1 minByShippingPrice: c2) equals: c2