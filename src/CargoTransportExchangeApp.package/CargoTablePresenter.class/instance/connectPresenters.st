initialization
connectPresenters

	cargoTable whenActivatedDo: [ :sm | self openCargoDetailsForm ].
	cargoTable whenSelectedItemChangedDo: [ :item |
		item ifNotNil: [ cargoForm model: item ] ].
	senderSearchInput whenTextChangedDo: [ :old :new | self filterByInputs ].
	receiverSearchInput whenTextChangedDo: [ :old :new | self filterByInputs ].
	statusDroplist whenSelectedItemChangedDo: [ :item | self filterByInputs ].
	saveExchangePropsButtons action: [ self updateModelAndInform ].
	resetExchangePropsButton action: [ self resetFormAndInform ].
	addCargoTButton action: [ self addNewCargo ].
	openFileTButton action: [ self openSTONFile ].
	saveToFileButton action: [ self saveToSTONFile ].
	setAccompanyingButton action: [ self setAccompanyingSelection ].
	setMainCargosButton action: [ self setMainSelection ].
	assembleButton action: [ self assembleCargos ].
	updateStatusButton action: [ self updateStatuses ]