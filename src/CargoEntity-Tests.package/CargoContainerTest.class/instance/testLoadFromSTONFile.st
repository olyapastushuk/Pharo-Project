tests
testLoadFromSTONFile

	| c1 c2 c3 collection collection2 tmpFile |
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
	collection := CargoContainer new addAll: {
			              c1.
			              c2.
			              c3 }.
	tmpFile := 'temp.ston'.
	collection saveToFile: tmpFile.
	collection2 := CargoContainer loadFromSTONFile: tmpFile.
	self assert: collection printString equals: collection2 printString.
	tmpFile asFileReference ensureDelete