tests - comparing
testGreaterThanEqualsSign

	cargo1 weight: 100.0.
	cargo2 weight: 100.0.
	self assert: cargo1 >= cargo2.
	
	cargo1 weight: 300.0.
	self assert: cargo1 >= cargo2