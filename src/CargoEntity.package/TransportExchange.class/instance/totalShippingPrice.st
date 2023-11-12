calculating
totalShippingPrice
	"Calculates the total shipping price of all cargo instances in a collection"

	^ self
		  inject: 0
		  into: [ :totalSum :cargo | totalSum + cargo shippingPrice ]