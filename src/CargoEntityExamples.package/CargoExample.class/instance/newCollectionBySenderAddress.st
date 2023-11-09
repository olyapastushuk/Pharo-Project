demonstration
newCollectionBySenderAddress

	| sender cargosNew msg |
	sender := ui request:
		          'Type a sender address to create a new collection with cargos departing from this adress only.'.

	cargosNew := TransportExchange new.
	cargosNew addAll: (cargos select: [ :c | c senderAddress = sender ]).

	msg := String new writeStream.
	msg << 'New collection departing from '; print: sender; << Character cr; print: cargosNew.

	ui message: msg contents