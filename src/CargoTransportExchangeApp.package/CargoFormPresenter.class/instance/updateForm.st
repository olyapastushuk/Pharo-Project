form - updating
updateForm

	senderAddressTextInput text: self model senderAddress.
	receiverAddressTextInput text: self model receiverAddress.
	weightNumberInput number: self model weight.
	transportDistanceNumberInput number: self model transportDistance.
	deliveryStatusOptionsInput selectItem: self model deliveryStatus.
	self updateDiscountInputIfAccompanyingCargo