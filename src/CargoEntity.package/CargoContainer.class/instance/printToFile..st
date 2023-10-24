files
printToFile: pathString
	"Output a collection printString to the specified file"

	pathString asFileReference writeStreamDo: [ :out |
		out nextPutAll: self printString ]