converting
becomeAccompanyingCargoWithDiscount: aDiscount

	self become:
		(AccompanyingCargo fromBase: self withDiscount: aDiscount)