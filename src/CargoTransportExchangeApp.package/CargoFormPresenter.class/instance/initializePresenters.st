initialization
initializePresenters

	senderAddressTextInput := self newTextInput.
	receiverAddressTextInput := self newTextInput.
	weightNumberInput := self newNumberInput.
	transportDistanceNumberInput := self newNumberInput.
	deliveryStatusOptionsInput := self newDropList.
	discountLabel := self newLabel label: 'Discount'.
	discountNumberInput := self newNumberInput.
	saveButton := self newButton.
	cancelButton := self newButton.
	resetButton := self newButton.
	cargoRadioButton := self newRadioButton.
	accompanyingRadioButton := self newRadioButton.
	
	self configurePresenters