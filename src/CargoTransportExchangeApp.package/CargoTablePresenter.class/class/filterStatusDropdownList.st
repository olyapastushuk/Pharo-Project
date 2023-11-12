constants
filterStatusDropdownList

	| vals |
	vals := DeliveryStatusEnum values asOrderedCollection.
	vals addFirst: nil. "We are adding nil at the beginning to be able to reset the search and show all records"
	^ vals asArray