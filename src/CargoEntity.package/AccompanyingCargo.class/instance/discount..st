accessing
discount: anInteger
	"A discount setter. Discount must be an integer in range from 0 to 100 percents."

	(anInteger >= 0 and: anInteger <= 100)
		ifTrue: [ discount := anInteger ]
		ifFalse: [
		self error: 'Discount must be an integer in range from 0 to 100.' ]