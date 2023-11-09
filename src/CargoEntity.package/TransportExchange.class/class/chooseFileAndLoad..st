files
chooseFileAndLoad: pattern

	| pathString |
	pathString := UIManager default
		              chooseFullFileNameMatching: { pattern }
		              label:
		              'Enter the file path to load a collection from:'.
	pathString ifNil: [ ^ nil ].
	'*.ston' = pattern ifTrue: [ ^ self loadFromSTONFile: pathString ].
	'*.stc' = pattern ifTrue: [ ^ self loadFromCodeFile: pathString ].
	^ self error: 'Unknown type of file: ' , pattern