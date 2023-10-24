calculating
shippingPrice
	"Calculates the shipping price taking discount into account."

	^ super shippingPrice - (super shippingPrice * discount)