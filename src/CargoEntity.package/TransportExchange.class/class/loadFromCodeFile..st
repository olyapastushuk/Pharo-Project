files
loadFromCodeFile: pathString
	"Executes a storeString read from the specified file and returns the created TransportExchange"

	pathString asFileReference readStreamDo: [ :in |
		^ Smalltalk compiler evaluate: in contents ]