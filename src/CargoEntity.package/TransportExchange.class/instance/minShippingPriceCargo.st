calculating
minShippingPriceCargo
	"Return a cargo instance with minimal shipping price from a collection"

	^ self
		  inject: (self at: 1)
		  into: [ :c1 :c2 | c1 minByShippingPrice: c2 ]