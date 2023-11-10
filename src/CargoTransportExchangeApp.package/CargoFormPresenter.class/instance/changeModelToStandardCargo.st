actions
changeModelToStandardCargo

	self model: self model asStandardCargo.
	self window title: self model className , ' Form'