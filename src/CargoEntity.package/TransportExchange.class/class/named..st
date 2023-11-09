instance creation
named: aString
	"Create a CargoExchange instance with a given name"

	^ self basicNew
		  memory: OrderedCollection new;
		  name: aString;
		  exchangeDiscount: 0