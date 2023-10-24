printing
printOn: aStream
	"Outputs the visual representation of a Cargo instance to aStream."

	super printOn: aStream.
	aStream nextPutAll: ' from '.
	senderAddress printOn: aStream.
	aStream nextPutAll: ' to '.
	receiverAddress printOn: aStream.
	aStream nextPutAll: '; weight: '.
	weight printOn: aStream.
	aStream nextPutAll: '; distance: '.
	transportDistance printOn: aStream.
	aStream nextPut: $;