actions
openSTONFile

	|filePath|
	filePath := UIManager default chooseFullFileNameMatching: { '*.ston' } label: 'Choose a file to load the data from'.
	filePath ifNil: [ ^ self ].
	self model: (TransportExchange loadFromSTONFile: filePath)