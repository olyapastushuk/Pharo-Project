files
saveToFile: pathString
	"Serialize the container in STON format to the specified file."

	pathString asFileReference writeStreamDo: [ :out |
		out nextPutAll: (STON toString: self) ]