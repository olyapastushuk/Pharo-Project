demonstration
showMinByShippingPrice

	| min msg |
	min := cargos minShippingPriceCargo.

	msg := String new writeStream.
	msg << 'The cargo with minimal shipping price('; print: min shippingPrice; << 'UAH) is:'.

	ui message: min printString title: msg contents.
	ui message: (min isKindOf: AccompanyingCargo) asString title: 'Is it accompanying cargo?'