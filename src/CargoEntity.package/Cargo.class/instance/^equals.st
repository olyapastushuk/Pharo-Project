comparing
= aCargo
	"Equality operator for comparing two cargos by weight"

	^ receiverAddress = aCargo receiverAddress
	  & (senderAddress = aCargo senderAddress) & (weight = aCargo weight)
	  & (transportDistance = aCargo transportDistance)