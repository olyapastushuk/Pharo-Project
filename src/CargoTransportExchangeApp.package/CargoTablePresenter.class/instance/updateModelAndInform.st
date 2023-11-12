actions
updateModelAndInform

	self model exchangeDiscount: accompanyingDiscountNumberInput number.
	CargoShippingProperties deliveryCost: deliveryCostRateNumberInput number.
	self modelChanged.
	UIManager default inform: 'Exchange properties have been saved'