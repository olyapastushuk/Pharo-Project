files
storeToFile: pathString
	"Save the executable code of the container creation to the specified file."

	pathString asFileReference writeStreamDo: [ :out |
		out nextPutAll: self storeString ]