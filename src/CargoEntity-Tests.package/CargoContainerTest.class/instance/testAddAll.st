tests
testAddAll

	| c1 c2 c3 collection |
	c1 := Cargo
		      from: 'Lviv'
		      to: 'Kyiv'
		      withWeight: 2.1
		      andDist: 3.6.
	c2 := AccompanyingCargo
		      from: 'Poltava'
		      to: 'Vinnytsia'
		      withWeight: 2.1
		      andDist: 3.6
		      andDiscount: 0.6.
	c3 := Cargo
		      from: 'Ivano-Frankivsk'
		      to: 'Chernihiv'
		      withWeight: 2.1
		      andDist: 3.
	collection := CargoContainer new.
	collection addAll: {
			c1.
			c2.
			c3 }.
	self assert: (collection at: 1) equals: c1.
	self assert: (collection at: 2) equals: c2.
	self assert: (collection at: 3) equals: c3.
	collection at: 3 put: Cargo new.
	self assert: ((collection at: 3) = c3) not