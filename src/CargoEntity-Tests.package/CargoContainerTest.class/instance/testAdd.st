tests
testAdd

	| cargo accompanyCargo collection |
	cargo := Cargo new.
	accompanyCargo := AccompanyingCargo new.
	collection := CargoContainer new.
	collection add: cargo.
	collection add: accompanyCargo.
	self assert: (collection at: 1) equals: cargo.
	self assert: (collection at: 2) equals: accompanyCargo.
	self should: [ collection add: 1 ] raise: Error