comparing
= aTransportExchange

	self class = aTransportExchange class ifFalse: [ ^ false ].
	self size = aTransportExchange size ifFalse: [ ^ false ].
	self
		with: aTransportExchange
		do: [ :c1 :c2 | c1 = c2 ifFalse: [ ^ false ] ].
	^ true