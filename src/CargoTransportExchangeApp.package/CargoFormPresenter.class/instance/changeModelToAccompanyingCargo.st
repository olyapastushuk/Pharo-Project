actions
changeModelToAccompanyingCargo

	(self model isKindOf: AccompanyingCargo) ifFalse: [
		self model: (AccompanyingCargo fromBase: self model withDiscount: 0) ]