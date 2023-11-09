tests - file operations
testLoadFromCodeFile
	
	| tmpFile teCopy |
	tmpFile := 'temp.stc'.
	
	transportExchange storeToFile: tmpFile.
	teCopy := TransportExchange loadFromCodeFile: tmpFile.
	self assert: transportExchange equals: teCopy.

	tmpFile asFileReference ensureDelete