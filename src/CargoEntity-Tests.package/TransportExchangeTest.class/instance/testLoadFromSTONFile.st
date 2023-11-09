tests - file operations
testLoadFromSTONFile

	| tmpFile teCopy |
	tmpFile := 'temp.ston'.
	
	transportExchange saveToFile: tmpFile.
	teCopy := TransportExchange loadFromSTONFile: tmpFile.
	self assert: transportExchange equals: teCopy.

	tmpFile asFileReference ensureDelete