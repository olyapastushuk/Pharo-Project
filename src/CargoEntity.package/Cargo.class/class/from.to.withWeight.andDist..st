instance creation
from: aSenderAddress to: aReceiverAddress withWeight: aWeight andDist: aDist
	"A constructor method for creating Cargo instances"

	"scope: class-variables  &  class-instance-variables"

	^ self basicNew
		  senderAddress: aSenderAddress;
		  receiverAddress: aReceiverAddress;
		  weight: aWeight;
		  transportDistance: aDist