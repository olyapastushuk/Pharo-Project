tests
testLessThanEqualsSign

	| c1 c2 |
	c1 := Cargo new weight: 10.0.
	c2 := Cargo new weight: 10.0.
	self assert: c1 <= c2.
	c2 weight: 20.0.
	self assert: c1 <= c2.
	c2 weight: 5.0.
	self assert: (c1 <= c2) not