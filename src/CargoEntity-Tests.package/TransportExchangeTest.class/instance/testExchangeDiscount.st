tests - accessing
testExchangeDiscount

	self should: [ transportExchange discount: 101 ] raise: Error.
	self should: [ transportExchange discount: -1 ] raise: Error