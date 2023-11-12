actions
updateStatuses

	self model
		changeStatusOfCargoObjs: cargoTable selectedItems
		to: statusSelectDropdown selectedItem.
	self modelChanged