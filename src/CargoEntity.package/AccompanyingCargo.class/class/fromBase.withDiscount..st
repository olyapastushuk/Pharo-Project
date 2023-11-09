instance creation
fromBase: aCargo withDiscount: aDiscount

	^ self basicNew
		  senderAddress: aCargo senderAddress;
		  receiverAddress: aCargo receiverAddress;
		  weight: aCargo weight;
		  transportDistance: aCargo transportDistance;
		  deliveryStatus: aCargo deliveryStatus;
		  discount: aDiscount