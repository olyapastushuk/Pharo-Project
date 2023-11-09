tests - transforming
testAssembleCargosWith
	| ac indexes |
	ac := AccompanyingCargo from: 'Kyiv' to: 'Odessa' withWeight: 5.0 andDist: 450.0 andDiscount: transportExchange exchangeDiscount.
	ac deliveryStatus: DeliveryStatusEnum assembledAndWaitingForDelivery.
	indexes := #( 2 3 4 6 8 10 ).
	
	transportExchange assembleCargos: indexes with: #( 1 ).
	indexes do: [ :i |
		self
			assert: (transportExchange at: i) discount
			equals: transportExchange exchangeDiscount.
		self assert: (transportExchange at: i) deliveryStatus
			equals: DeliveryStatusEnum assembledAndWaitingForDelivery ].
	self assert: (transportExchange at: 1) deliveryStatus equals: DeliveryStatusEnum assembledAndWaitingForDelivery.
	self assert: (transportExchange at: 3) equals: ac