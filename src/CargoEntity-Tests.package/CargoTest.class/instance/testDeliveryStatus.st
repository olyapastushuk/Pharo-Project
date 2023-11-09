tests - accessing
testDeliveryStatus

	cargo1 deliveryStatus:
		DeliveryStatusEnum deliveredAndWaitingForReceiver.
	self
		assert: cargo1 deliveryStatus
		equals: DeliveryStatusEnum deliveredAndWaitingForReceiver.
	self
		should: [ cargo1 deliveryStatus: #deliveredAndWaitingForReceiver ]
		raise: Error