tests
testInitialize

	| c |
	c := AccompanyingCargo new.
	self assert: c receiverAddress equals: '-'.
	self assert: c senderAddress equals: '-'.
	self assert: c weight equals: 0.0.
	self assert: c transportDistance equals: 0.0.
	self assert: c discount equals: 0.0