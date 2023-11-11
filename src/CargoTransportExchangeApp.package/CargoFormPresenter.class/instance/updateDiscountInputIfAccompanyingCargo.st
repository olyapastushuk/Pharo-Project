form - updating
updateDiscountInputIfAccompanyingCargo

	(self model isKindOf: AccompanyingCargo)
		ifTrue: [
			discountNumberInput number: self model discount.
			discountLabel show.
			discountNumberInput show.
			accompanyingRadioButton state: true ]
		ifFalse: [
			discountLabel hide.
			discountNumberInput hide.
			cargoRadioButton state: true ]