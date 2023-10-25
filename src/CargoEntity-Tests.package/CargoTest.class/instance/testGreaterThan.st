tests
testGreaterThan

	| c1 c2 |
	c1 := Cargo new weight: 30.0.
	c2 := Cargo new weight: 20.0.
	self assert: c1 > c2.
	c1 weight: 10.0.
	self assert: (c1 > c2) not