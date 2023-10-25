demonstration
demonstrateComparisonOperators

	| msg |
	cargos := cargos asSortedCollection: [ :c1 :c2 | c1 > c2 ].
	msg := String new writeStream.
	msg
		nextPutAll: 'Collection sorted in a descending order:';
		nextPut: Character cr;
		print: cargos.
	ui message: msg contents