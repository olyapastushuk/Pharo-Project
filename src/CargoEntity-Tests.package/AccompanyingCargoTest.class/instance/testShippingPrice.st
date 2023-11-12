tests - calculating
testShippingPrice

	accoCargo1
		weight: 6.0;
		transportDistance: 5.0;
		discount: 20.
	self
		assert: (accoCargo1 shippingPrice round: 2)
		equals: (CargoShippingProperties deliveryCost * 24.0 round: 2)