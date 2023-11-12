actions
saveToSTONFile

	| filePath |
	filePath := UIManager default chooseFullFileNameMatching: { '*.ston' } label: 'Save As...'.
	filePath ifNil: [ ^ self ].
	self model saveToFile: filePath