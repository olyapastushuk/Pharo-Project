accessing
addByGUI: aNumber
	"Adds a specified number of cargo instances to a collection by reading from a GUI dialog"

	self addAll:
		((1 to: aNumber) asArray collect: [ :_ | Cargo newByDialogInput ])