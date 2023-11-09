printing
printOn: aStream
	"Prints the visual representation of a container"

	self do: [ :cargo |
		cargo printOn: aStream.
		aStream nextPut: Character cr ]