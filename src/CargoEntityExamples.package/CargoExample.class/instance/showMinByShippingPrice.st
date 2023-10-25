demonstration
showMinByShippingPrice

	| min msg |
	min := cargos minShippingPriceCargo.
	msg := String new writeStream.
	msg
		nextPutAll: 'The cargo with minimal shipping price(';
		print: min shippingPrice;
		nextPutAll: 'UAH) is:'.
	ui message: min printString title: msg contents.
	ui
		message: (min isKindOf: AccompanyingCargo) printString
		title: 'Is it accompanying cargo?'