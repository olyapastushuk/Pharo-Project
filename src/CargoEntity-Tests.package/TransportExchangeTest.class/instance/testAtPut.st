tests - accessing
testAtPut

	self assert: (transportExchange at: 1) ~= cargo1.

	transportExchange at: 1 put: cargo1.
	self assert: (transportExchange at: 1) equals: cargo1.
	self should: [ transportExchange at: 1 put: 'Cargo' ] raise: Error