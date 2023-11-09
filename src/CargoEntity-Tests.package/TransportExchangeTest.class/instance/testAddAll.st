tests - adding
testAddAll

	transportExchange addAll: { cargo1. accoCargo1. cargo2. accoCargo2 }.
	self assert: transportExchange last equals: accoCargo2.
	self assert: (transportExchange at: transportExchange size - 1) equals: cargo2.
	self assert: (transportExchange at: transportExchange size - 2) equals: accoCargo1.
	self assert: (transportExchange at: transportExchange size - 3) equals: cargo1.
	
	transportExchange at: (transportExchange size) put: Cargo new.
	self assert: transportExchange last ~= accoCargo2