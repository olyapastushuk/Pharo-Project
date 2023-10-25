running
run

	| answer msg1 |
	msg1 := String new writeStream.
	msg1
		nextPutAll: 'Here is your cargo instances collection.';
		nextPut: Character cr;
		print: cargos;
		nextPut: Character cr;
		nextPutAll: 'Do you wish to add more?'.
	answer := ui confirm: msg1 contents.
	answer ifTrue: [
		cargos addByGUI: 1.
		self run.
		^ self ].

	self showMinByShippingPrice.
	self doubleDiscountPrices.
	self newCollectionBySenderAddress.
	self demonstrateComparisonOperators