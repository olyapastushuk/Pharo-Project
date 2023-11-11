actions
openCargoDetailsForm: aSelectedIndex

	| res |
	res := (CargoFormPresenter on: cargoTable selectedItem) openModal.
	res isCancelled ifTrue: [ ^ self ].
	self model at: aSelectedIndex put: res presenter model.
	self modelChanged.
	cargoTable selectIndex: aSelectedIndex