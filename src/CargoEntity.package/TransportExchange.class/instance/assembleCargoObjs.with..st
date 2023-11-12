transforming
assembleCargoObjs: accompaningCargos with: mainCargos

	accompaningCargos do: [ :cargo |
		cargo become:
			(AccompanyingCargo
				 fromBase: cargo
				 withDiscount: self exchangeDiscount).
		cargo deliveryStatus:
			DeliveryStatusEnum assembledAndWaitingForDelivery ].
	mainCargos do: [ :cargo |
		cargo deliveryStatus:
			DeliveryStatusEnum assembledAndWaitingForDelivery ]