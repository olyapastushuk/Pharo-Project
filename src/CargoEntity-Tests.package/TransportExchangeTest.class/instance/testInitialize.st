tests
testInitialize

	| c |
	c := TransportExchange new.
	self assert: c size equals: 0.
	self assert: c name equals: 'Default Transport Exchange'.
	self assert: c exchangeDiscount equals: 0.
	self should: [ c at: 1 ] raise: Error