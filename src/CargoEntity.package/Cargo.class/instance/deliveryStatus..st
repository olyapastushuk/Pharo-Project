accessing
deliveryStatus: aDeliveryStatus

	(aDeliveryStatus isKindOf: DeliveryStatusEnum) ifFalse: [
		^ self error: 'A status must be an instance of DeliveryStatusEnum.' ].
	deliveryStatus := aDeliveryStatus