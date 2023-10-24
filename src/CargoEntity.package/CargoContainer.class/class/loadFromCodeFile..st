files
loadFromCodeFile: pathString
	"Executes a storeString read from the specified file and returns the result CargoCollection."

	pathString asFileReference readStreamDo: [ :in |
		^ Smalltalk compiler evaluate: in contents ]