actions
openCargoDetailsForm

	| selectedItem sIndex res |
	selectedItem := cargoTable selectedItem.
	res := (CargoFormPresenter on: selectedItem) openModal.
	res isCancelled ifTrue: [ ^ self ].
	sIndex := self model find: selectedItem.
	self model at: sIndex put: res presenter model.
	self modelChanged.
	cargoTable selectItem: res presenter model