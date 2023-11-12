tests - calculating
testTotalTransportingDistance

	| te c1 c2 c3 |
	c1 := Cargo new
		      weight: 2.0;
		      transportDistance: 2.0.
	c2 := Cargo new
		      weight: 1.0;
		      transportDistance: 1.0.
	c3 := AccompanyingCargo new
		      weight: 3.0;
		      transportDistance: 2.0;
		      discount: 95.
	te := TransportExchange withAll: {
			      c1.
			      c2.
			      c3 }.
	self assert: (te totalTransportingDistance round: 2) equals: 5.0