files
loadFromSTONFile: pathString
	"Deserealizes a CargoCollection from a STON file."

	pathString asFileReference readStreamDo: [ :in |
		^ (STON reader on: in) next ]