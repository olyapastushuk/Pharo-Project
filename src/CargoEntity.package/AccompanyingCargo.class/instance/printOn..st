printing
printOn: aStream
	"A method for writing the visual represenation of accompaying cargo to the output stream"

	super printOn: aStream.
	aStream << ' -'; print: discount; << '%!'