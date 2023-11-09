demonstration
addCargoRequestAnswer

	| msg |
	msg := String new writeStream.
	msg << 'Here is your cargo instances collection.'; << Character cr;
		print: cargos; << Character cr;
		nextPutAll: 'Do you wish to add more?'.

	^ ui confirm: msg contents.