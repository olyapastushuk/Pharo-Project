initialization
modelChanged

	cargoTable items: self model.
	totalShippingPriceNumber text: self model totalShippingPrice asString.
	totalDistanceNumber text: self model totalTransportingDistance asString.
	accompanyingDiscountNumberInput number: self model exchangeDiscount.
	deliveryCostRateNumberInput number: CargoShippingProperties deliveryCost.
	senderSearchInput text: String empty.
	receiverSearchInput text: String empty.
	statusDroplist selectItem: nil