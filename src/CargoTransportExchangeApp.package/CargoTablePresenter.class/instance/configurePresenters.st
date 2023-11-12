configuration
configurePresenters

	cargoTable
		columns: {
			SpStringTableColumn title: 'Type' evaluated: [ :item | item className ].
			SpStringTableColumn title: 'Sender address' evaluated: #senderAddress.
			SpStringTableColumn title: 'Receiver address' evaluated: #receiverAddress.
			SpStringTableColumn title: 'Status' evaluated: [ :item | item deliveryStatus value ] };
		beResizable;
		enableSearch;
		beMultipleSelection.
	senderSearchInput placeholder: 'Search for sender...'.
	receiverSearchInput placeholder: 'Search for receiver...'.
	statusDroplist
		items: self class filterStatusDropdownList;
		display: [ :e | e ifNil: [ String empty ] ifNotNil: [ e value ] ].
	totalShippingPriceNumber beNotEditable.
	totalDistanceNumber beNotEditable.
	saveExchangePropsButtons label: 'Save'.
	resetExchangePropsButton label: 'Reset'