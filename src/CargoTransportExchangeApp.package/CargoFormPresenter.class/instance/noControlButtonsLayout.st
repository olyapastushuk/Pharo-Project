layout
noControlButtonsLayout

	| cargoFormL radioButtonsL |
	cargoFormL := self newGridLayout build: [ :builder |
		builder
		add: 'Sender address:'; add: senderAddressTextInput span: 2@1; nextRow;
		add: 'Receiver address:'; add: receiverAddressTextInput span: 2@1; nextRow;
		add: 'Weight, kg:'; add: weightNumberInput span: 2@1; nextRow;
		add: 'Transport distance, km:'; add: transportDistanceNumberInput span: 2@1; nextRow;
		add: 'Delivery status:'; add: deliveryStatusOptionsInput span: 2@1; nextRow;
		add: discountLabel; add: discountNumberInput span: 2@1; nextRow ].
	radioButtonsL := self newBoxLayoutLeftToRight
		spacing: 10;
		addLast: cargoRadioButton;
		addLast: accompanyingRadioButton;
		yourself.
	^ self newBoxLayoutTopToBottom
		spacing: 10;
		add: cargoFormL expand: true fill: true;
		add: radioButtonsL expand: false fill: false;
		yourself