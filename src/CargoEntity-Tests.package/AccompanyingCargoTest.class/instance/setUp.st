running
setUp

	super setUp.

	accoCargo1 := AccompanyingCargo
		              from: 'TestAccoCargo1From'
		              to: 'TestAccoCargo1To'
		              withWeight: 8.1
		              andDist: 601.1
		              andDiscount: 21.
	accoCargo2 := AccompanyingCargo
		              from: 'TestAccoCargo2From'
		              to: 'TestAccoCargo2To'
		              withWeight: 8.2
		              andDist: 602.1
		              andDiscount: 22