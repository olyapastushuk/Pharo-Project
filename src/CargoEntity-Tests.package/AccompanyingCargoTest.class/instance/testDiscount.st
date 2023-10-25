tests
testDiscount

	| c |
	c := AccompanyingCargo new.
	self should: [ c discount: 5.0 ] raise: Error