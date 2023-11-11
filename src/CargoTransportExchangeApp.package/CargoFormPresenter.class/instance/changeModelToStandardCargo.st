actions
changeModelToStandardCargo

	(self model isKindOf: AccompanyingCargo) ifTrue: [
		self model: self model asStandardCargo ]