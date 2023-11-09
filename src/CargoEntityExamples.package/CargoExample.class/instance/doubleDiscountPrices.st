demonstration
doubleDiscountPrices

	| msg cargosDoubledDiscount |
	cargosDoubledDiscount := TransportExchange new.
	cargosDoubledDiscount addAll: (cargos collect: [ :c |
			 (c isKindOf: AccompanyingCargo)
				 ifTrue: [ c discount: c discount * 2 ]
				 ifFalse: [ c ] ]).

	msg := String new writeStream.
	msg << 'Discounts were doubled for accompanying cargos! Here is your new collection:'; << Character cr;
		print: cargosDoubledDiscount.

	ui message: msg contents