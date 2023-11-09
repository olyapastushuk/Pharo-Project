instance creation
from: aSenderAddress to: aReceiverAddress withWeight: aWeight andDist: aDist andDiscount: aDiscount
	"Instance constructor"

	^ self basicNew
		  senderAddress: aSenderAddress;
		  receiverAddress: aReceiverAddress;
		  weight: aWeight;
		  transportDistance: aDist;
		  discount: aDiscount;
		  deliveryStatus: DeliveryStatusEnum pending