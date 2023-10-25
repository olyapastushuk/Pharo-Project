demonstration
doubleDiscountPrices

	| msg |
	cargos := CargoContainer new addAll: (cargos collect: [ :c |
			           (c isKindOf: AccompanyingCargo)
				           ifTrue: [
					           c discount: c discount * 2.
					           c ]
				           ifFalse: [ c ] ]).
	msg := String new writeStream.
	msg
		nextPutAll:
			'Discounts were doubled for accompanying cargos! Here is your new collection:';
		nextPut: Character cr;
		print: cargos.
	ui message: msg contents