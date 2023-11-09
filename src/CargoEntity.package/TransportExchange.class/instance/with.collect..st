iterating
with: aTransportExchange collect: aBlock

	| newMem |
	newMem := memory with: aTransportExchange memory collect: aBlock.
	^ self class basicNew
		  memory: newMem;
		  name: self name;
		  exchangeDiscount: self exchangeDiscount