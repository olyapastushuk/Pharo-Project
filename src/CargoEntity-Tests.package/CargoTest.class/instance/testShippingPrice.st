tests - calculating
testShippingPrice

	cargo1
		weight: 6.0;
		transportDistance: 5.0.
	self
		assert: (cargo1 shippingPrice round: 2)
		equals: (CargoShippingProperties deliveryCost * 30.0 round: 2)