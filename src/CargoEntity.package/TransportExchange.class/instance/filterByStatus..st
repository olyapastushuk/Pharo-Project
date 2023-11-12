filtering
filterByStatus: aStatus
	"Filter a cargo collection by a status"
	aStatus ifNil: [ ^ self ].
	^ self select: [ :cargo | cargo deliveryStatus = aStatus ]