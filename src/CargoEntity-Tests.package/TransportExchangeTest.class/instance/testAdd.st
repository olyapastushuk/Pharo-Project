tests - adding
testAdd

	transportExchange add: cargo1; add: accoCargo1.
	self assert: (transportExchange at: (transportExchange size - 1)) equals: cargo1.
	self assert: transportExchange last equals: accoCargo1.
	self should: [ transportExchange add: 'AccompanyingCargo' ] raise: Error