model - updating
updateModelDiscountIfAccompanyingCargo

	(self model isKindOf: AccompanyingCargo) ifTrue: [
		self model discount: discountNumberInput number ]