actions
updateModelAndInform

	self model exchangeDiscount: accompanyingDiscountNumberInput number.
	Cargo deliveryCost: deliveryCostRateNumberInput number.
	self modelChanged.
	UIManager default inform: 'Exchange properties have been saved'