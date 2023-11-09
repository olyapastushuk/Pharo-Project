tests - accessing
testDiscount

	self should: [ accoCargo1 discount: 101 ] raise: Error.
	self should: [ accoCargo1 discount: -1 ] raise: Error