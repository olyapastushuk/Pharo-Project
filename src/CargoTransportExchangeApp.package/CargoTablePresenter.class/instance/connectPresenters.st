initialization
connectPresenters

	cargoTable whenActivatedDo: [ :sm |
		self openCargoDetailsForm: sm selectedIndex ].
	cargoTable whenSelectedItemChangedDo: [ :item |
		item ifNotNil: [ cargoForm model: item ] ]