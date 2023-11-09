comparing
= aCargo
	"Equality operator for comparing two cargos by weight"

	self class = aCargo class ifFalse: [ ^ false ].
	^ receiverAddress = aCargo receiverAddress
	  & (senderAddress = aCargo senderAddress) & (weight = aCargo weight)
	  & (transportDistance = aCargo transportDistance)
	  & (self deliveryStatus = aCargo deliveryStatus)