iterating
select: aBlock

	| newMem |
	newMem := memory select: aBlock.
	^ self class basicNew
		  memory: newMem;
		  name: self name;
		  exchangeDiscount: self exchangeDiscount