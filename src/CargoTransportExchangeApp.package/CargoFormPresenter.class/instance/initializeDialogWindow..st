initialization
initializeDialogWindow: aDialogPresenter

	aDialogPresenter centered.
	saveButton action: [ self updateModel. aDialogPresenter beOk. aDialogPresenter close ].
	cancelButton action: [ aDialogPresenter beCancel. aDialogPresenter close ]