tests - comparing
testEqualsSign

	self assert: accoCargo1 ~= accoCargo2.

	accoCargo1
		senderAddress: accoCargo2 senderAddress;
		receiverAddress: accoCargo2 receiverAddress;
		weight: accoCargo2 weight;
		transportDistance: accoCargo2 transportDistance;
		discount: accoCargo2 discount.
	self assert: accoCargo1 equals: accoCargo2.

	accoCargo1 deliveryStatus: DeliveryStatusEnum paidAndReceived.
	self assert: accoCargo1 ~= accoCargo2