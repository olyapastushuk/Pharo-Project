calculating
shippingPrice
	"A method for calculating the shipping price based on the delivery cost and transportation distance."

	"scope: instance-variables"

	^ self class deliveryCost * weight * transportDistance