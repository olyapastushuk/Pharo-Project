transforming
changeStatusOfCargoObjs: cargos to: aDeliveryStatus

	cargos do: [ :cargo | cargo deliveryStatus: aDeliveryStatus ]