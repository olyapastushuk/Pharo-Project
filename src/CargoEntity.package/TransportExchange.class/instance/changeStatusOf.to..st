transforming
changeStatusOf: cargoIndexes to: aDeliveryStatus

	cargoIndexes do: [ :i | (self at: i) deliveryStatus: aDeliveryStatus ]