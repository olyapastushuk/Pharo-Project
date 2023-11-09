filtering
filterBySender: aSender
	"Filter a cargo collection by a sender"

	^ self select: [ :cargo | cargo senderAddress = aSender ]