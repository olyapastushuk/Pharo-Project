instance creation
withAll: aSequence andName: aString
	"Create a CargoExchange instance with the given name and cargo sequence"

	| ce |
	ce := self basicNew.
	ce memory: OrderedCollection new.
	ce name: aString.
	ce exchangeDiscount: 0.
	ce addAll: aSequence.
	^ ce