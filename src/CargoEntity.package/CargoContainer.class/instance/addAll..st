accessing
addAll: aSequence
	"Adds all cargo instances from a sequence."

	aSequence do: [ :cargo | self add: cargo ]