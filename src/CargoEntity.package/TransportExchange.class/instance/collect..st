iterating
collect: aBlock

	| newMem |
	newMem := memory collect: aBlock.
	^ self class basicNew
		  memory: newMem;
		  name: self name;
		  exchangeDiscount: self exchangeDiscount