tests
testFromToWithWeightAndDistAndDiscount

	| c |
	c := AccompanyingCargo
		     from: 'Lviv'
		     to: 'Kyiv'
		     withWeight: 10.0
		     andDist: 100.0
		     andDiscount: 0.1.
	self assert: c senderAddress equals: 'Lviv'.
	self assert: c receiverAddress equals: 'Kyiv'.
	self assert: c weight equals: 10.0.
	self assert: c transportDistance equals: 100.0.
	self assert: c discount equals: 0.1