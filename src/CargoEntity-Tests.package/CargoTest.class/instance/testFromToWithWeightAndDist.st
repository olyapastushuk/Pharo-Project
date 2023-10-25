tests
testFromToWithWeightAndDist

	| c |
	c := Cargo
		     from: 'Lviv'
		     to: 'Kyiv'
		     withWeight: 10.0
		     andDist: 100.0.
	self assert: c senderAddress equals: 'Lviv'.
	self assert: c receiverAddress equals: 'Kyiv'.
	self assert: c weight equals: 10.0.
	self assert: c transportDistance equals: 100.0