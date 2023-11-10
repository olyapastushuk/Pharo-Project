actions
changeModelToAccompanyingCargo

	self model: (AccompanyingCargo fromBase: self model withDiscount: 0).
	self window title: self model className , ' Form'