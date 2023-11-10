model - updating
updateModel

	self model
		senderAddress: senderAddressTextInput text;
		receiverAddress: receiverAddressTextInput text;
		weight: weightNumberInput number;
		transportDistance: transportDistanceNumberInput number;
		deliveryStatus: deliveryStatusOptionsInput selectedItem.
	self updateModelDiscountIfAccompanyingCargo