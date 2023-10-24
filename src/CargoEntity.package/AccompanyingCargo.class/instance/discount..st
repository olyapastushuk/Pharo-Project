accessing
discount: aDiscount
	"A discount setter. Discount must be in range [0, 1]."

	aDiscount >= 0.0 & aDiscount <= 1.0
		ifTrue: [ discount := aDiscount ]
		ifFalse: [ self error: 'Discount must be a percentage from 0 to 1.' ]