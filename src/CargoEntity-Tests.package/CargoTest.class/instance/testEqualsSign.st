tests - comparing
testEqualsSign

	self assert: cargo1 ~= cargo2.

	cargo1
		senderAddress: cargo2 senderAddress;
		receiverAddress: cargo2 receiverAddress;
		weight: cargo2 weight;
		transportDistance: cargo2 transportDistance.
	self assert: cargo1 equals: cargo2.
	
	cargo1 deliveryStatus: DeliveryStatusEnum paidAndReceived.
	self assert: cargo1 ~= cargo2