transforming
assembleCargos: accompaningIndexes with: mainCargoIndexes

	accompaningIndexes do: [ :i |
		self at: i put: (AccompanyingCargo
				 fromBase: (self at: i)
				 withDiscount: self exchangeDiscount).
		(self at: i) deliveryStatus:
			DeliveryStatusEnum assembledAndWaitingForDelivery ].
	mainCargoIndexes do: [ :i |
		(self at: i) deliveryStatus:
			DeliveryStatusEnum assembledAndWaitingForDelivery ]