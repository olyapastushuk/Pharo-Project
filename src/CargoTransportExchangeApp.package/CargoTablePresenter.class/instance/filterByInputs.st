actions
filterByInputs

	cargoTable items: (((self model filterBySender: senderSearchInput text)
		   filterByReceiver: receiverSearchInput text)
			filterByStatus: statusDroplist selectedItem)