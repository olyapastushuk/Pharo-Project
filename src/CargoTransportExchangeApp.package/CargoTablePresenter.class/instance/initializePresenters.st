initialization
initializePresenters

	cargoTable := self newTable.
	cargoForm := self instantiate: CargoFormPresenter on: Cargo new.
	deliveryCostRateNumberInput := self newNumberInput.
	accompanyingDiscountNumberInput := self newNumberInput.
	totalShippingPriceNumber := self newTextInput.
	totalDistanceNumber := self newTextInput.
	senderSearchInput := self newTextInput.
	receiverSearchInput := self newTextInput.
	statusDroplist := self newDropList.
	saveExchangePropsButtons := self newButton.
	resetExchangePropsButton := self newButton.
	
	self configurePresenters