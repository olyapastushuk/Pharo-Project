tests
testAtPut

	| c cargo |
	cargo := Cargo
		         from: 'Volyn'
		         to: 'Kyiv'
		         withWeight: 2.2
		         andDist: 4.6.
	c := CargoContainer new.
	c addAll: {
			(Cargo
				 from: 'Lviv'
				 to: 'Kyiv'
				 withWeight: 2.1
				 andDist: 3.6).
			(Cargo
				 from: 'Kharkiv'
				 to: 'Poltava'
				 withWeight: 2.1
				 andDist: 3.6).
			(AccompanyingCargo
				 from: 'Poltava'
				 to: 'Vinnytsia'
				 withWeight: 2.1
				 andDist: 3.6
				 andDiscount: 0.6).
			(Cargo
				 from: 'Vinnytsia'
				 to: 'Ivano-Frankivsk'
				 withWeight: 2.1
				 andDist: 3.6).
			(Cargo
				 from: 'Ivano-Frankivsk'
				 to: 'Chernihiv'
				 withWeight: 2.1
				 andDist: 3.6) }.
	self assert: ((c at: 1) = cargo) not.
	c at: 1 put: cargo.
	self assert: (c at: 1) equals: cargo.
	self should: [ c at: 1 put: 2 ] raise: Error