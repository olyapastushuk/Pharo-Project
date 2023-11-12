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
	toolbar := self newToolbar.
	addCargoTButton := self newToolbarButton.
	openFileTButton := self newToolbarButton.
	saveToFileButton := self newToolbarButton.
	setAccompanyingButton := self newButton.
	setMainCargosButton := self newButton.
	assembleButton := self newButton.
	accompanyingSelectionList := self newList.
	mainSelectionList := self newList.
	statusSelectDropdown := self newDropList.
	updateStatusButton := self newButton.
	
	self configurePresenters