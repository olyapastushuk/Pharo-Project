filtering
filterBySender: aSender
	"Filter a cargo collection by a sender"
	aSender isEmpty ifTrue: [ ^self ].
	^ self select: [ :cargo | (cargo senderAddress findString: aSender) ~= 0 ]