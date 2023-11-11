initialization
initializePresenters

	cargoTable := self newTable.
	cargoForm := self instantiate: CargoFormPresenter on: Cargo new.
	
	self configurePresenters