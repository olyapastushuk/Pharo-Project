configuring
configurePresenters

	saveButton label: 'Save'; iconNamed: #smallOk.
	cancelButton label: 'Cancel'; iconNamed: #smallCancel.
	resetButton label: 'Reset'; iconNamed: #smallUndo.
	deliveryStatusOptionsInput items: DeliveryStatusEnum values; display: [ :e | e value ].
	cargoRadioButton label: 'Standard Cargo'.
	accompanyingRadioButton label: 'Accompanying Cargo'.
	cargoRadioButton associatedRadioButtons: { accompanyingRadioButton }.