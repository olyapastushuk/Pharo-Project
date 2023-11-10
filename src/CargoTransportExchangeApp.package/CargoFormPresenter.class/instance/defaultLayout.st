layout
defaultLayout

	^ self newGridLayout build: [ :builder |
		builder
		add: 'Sender address:'; add: senderAddressTextInput span: 2@1; nextRow;
		add: 'Receiver address:'; add: receiverAddressTextInput span: 2@1; nextRow;
		add: 'Weight, kg:'; add: weightNumberInput span: 2@1; nextRow;
		add: 'Transport distance, km:'; add: transportDistanceNumberInput span: 2@1; nextRow;
		add: 'Delivery status:'; add: deliveryStatusOptionsInput span: 2@1; nextRow;
		add: discountLabel; add: discountNumberInput span: 2@1; nextRow;
		add: (self newBoxLayoutLeftToRight
			addLast: cargoRadioButton; addLast: accompanyingRadioButton; yourself) span: 3@1; nextRow;
		add: saveButton; add: resetButton; add: cancelButton; nextRow ]