tests
testEqualsSign

	| c1 c2 |
	c1 := Cargo new.
	c2 := Cargo new.
	self assert: c1 equals: c2.
	c1 senderAddress: 'Lviv'.
	c2 senderAddress: 'Lviv'.
	self assert: c1 equals: c2.
	c2 senderAddress: 'Kyiv'.
	self assert: (c1 = c2) not