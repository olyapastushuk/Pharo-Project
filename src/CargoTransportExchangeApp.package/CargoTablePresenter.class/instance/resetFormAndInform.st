actions
resetFormAndInform

	deliveryCostRateNumberInput number: CargoShippingProperties deliveryCost.
	accompanyingDiscountNumberInput number: self model exchangeDiscount.
	UIManager default inform: 'Exchange properties have been reset.'