adding
addByGUI: aQuantity
	"Adds a specified number of cargo instances to a collection by reading from a GUI dialog"

	self addAll:
		((1 to: aQuantity) collect: [ :_ | Cargo newByDialogInput ]).
	^ aQuantity