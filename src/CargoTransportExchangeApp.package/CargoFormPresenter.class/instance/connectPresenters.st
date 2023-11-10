initialization
connectPresenters 

	saveButton action: [ self updateModelAndInform ].
	resetButton action: [ self resetFormAndInform ].
	cancelButton action: [ self window close ].
	cargoRadioButton whenActivatedDo: [ self changeModelToStandardCargo ].
	accompanyingRadioButton whenActivatedDo: [ self changeModelToAccompanyingCargo ].