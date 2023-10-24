printing
printOn: aStream
	"A method for writing the visual represenation of accompaying cargo to the output stream"

	super printOn: aStream.
	aStream nextPutAll: ' discount: '.
	discount printOn: aStream.
	aStream nextPutAll: ';'