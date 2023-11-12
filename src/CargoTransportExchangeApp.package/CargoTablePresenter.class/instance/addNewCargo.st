actions
addNewCargo

	| cf |
	cf := (CargoFormPresenter on: Cargo new) openModal.
	cf isCancelled ifTrue: [ ^ self ].
	self model add: cf presenter model.
	self modelChanged