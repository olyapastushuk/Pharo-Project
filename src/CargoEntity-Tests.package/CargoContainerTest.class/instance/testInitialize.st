tests
testInitialize

	| c |
	c := CargoContainer new.
	self assert: c size equals: 0.
	self should: [ c at: 1 ] raise: Error