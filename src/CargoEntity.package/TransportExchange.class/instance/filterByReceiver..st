filtering
filterByReceiver: aReceiver
	"Filter a cargo collection by a receiver"

	^ self select: [ :cargo | cargo receiverAddress = aReceiver ]