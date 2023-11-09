calculating
shippingPrice
	"Calculates the shipping price taking the discount into account."

	^ super shippingPrice * (1 - (discount / 100))