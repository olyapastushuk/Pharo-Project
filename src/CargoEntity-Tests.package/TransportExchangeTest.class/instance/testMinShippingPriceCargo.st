tests - calculating
testMinShippingPriceCargo

	transportExchange add: (AccompanyingCargo new weight: 1.0; transportDistance: 1.0; discount: 50).
	self assert: transportExchange minShippingPriceCargo equals: transportExchange last