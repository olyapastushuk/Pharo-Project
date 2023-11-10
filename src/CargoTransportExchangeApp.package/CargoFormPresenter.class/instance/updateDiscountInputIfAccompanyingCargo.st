form - updating
updateDiscountInputIfAccompanyingCargo

	(self model isKindOf: AccompanyingCargo)
		ifTrue: [
			discountNumberInput number: self model discount.
			discountLabel show.
			discountNumberInput show ]
		ifFalse: [
			discountLabel hide.
			discountNumberInput hide ]