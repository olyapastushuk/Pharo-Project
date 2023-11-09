converting
assembleCargos: accompaningIndexes with: mainCargoIndexes

	accompaningIndexes do: [ :i |
		(self at: i) becomeAccompanyingCargoWithDiscount: self exchangeDiscount.
		(self at: i) deliveryStatus: DeliveryStatusEnum assembledAndWaitingForDelivery ].
	mainCargoIndexes do: [ :i | (self at: i) deliveryStatus: DeliveryStatusEnum assembledAndWaitingForDelivery ]