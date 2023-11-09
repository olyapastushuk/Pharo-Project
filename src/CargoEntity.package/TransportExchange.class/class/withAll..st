instance creation
withAll: aSequence
	"Create a CargoExchange instance with the given cargo sequence"

	| ce |
	ce := self basicNew.
	ce memory: OrderedCollection new.
	ce name: 'Default Cargo Exchange'.
	ce exchangeDiscount: 0.
	ce addAll: aSequence.
	^ ce