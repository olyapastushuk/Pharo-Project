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
		beMultipleSelection
		