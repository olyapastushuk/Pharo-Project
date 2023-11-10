converting
asStandardCargo

	^ Cargo basicNew
		senderAddress: self senderAddress;
		receiverAddress: self receiverAddress;
		weight: self weight;
		transportDistance: self transportDistance;
		deliveryStatus: self deliveryStatus