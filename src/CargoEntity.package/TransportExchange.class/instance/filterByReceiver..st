filtering
filterByReceiver: aReceiver
	"Filter a cargo collection by a receiver"
	aReceiver isEmpty ifTrue: [ ^self ].
	^ self select: [ :cargo | (cargo receiverAddress findString: aReceiver) ~= 0 ]