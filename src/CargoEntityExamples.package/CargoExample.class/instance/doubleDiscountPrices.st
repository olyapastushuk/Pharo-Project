demonstration
doubleDiscountPrices

	| msg cargosDoubledDiscount |
	cargosDoubledDiscount := CargoContainer new.
	cargosDoubledDiscount addAll: (cargos collect: [ :c |
			 (c isKindOf: AccompanyingCargo)
				 ifTrue: [ c discount: c discount * 2 ]
				 ifFalse: [ c ] ]).
	msg := String new writeStream.
	msg
		nextPutAll:
			'Discounts were doubled for accompanying cargos! Here is your new collection:';
		nextPut: Character cr;
		print: cargosDoubledDiscount.
	ui message: msg contents