running
setUp

	super setUp.
	
	transportExchange := TransportExchange withAll: {
		Cargo from: 'Lviv' to: 'Kyiv' withWeight: 7.2 andDist: 280.0.
    	AccompanyingCargo from: 'Lviv' to: 'Kyiv' withWeight: 7.2 andDist: 280.0 andDiscount: 20.
    	Cargo from: 'Kyiv' to: 'Odessa' withWeight: 5.0 andDist: 450.0.
    	AccompanyingCargo from: 'Kyiv' to: 'Odessa' withWeight: 5.0 andDist: 450.0 andDiscount: 15.
    	Cargo from: 'Odessa' to: 'Lviv' withWeight: 8.3 andDist: 600.0.
    	AccompanyingCargo from: 'Odessa' to: 'Lviv' withWeight: 8.3 andDist: 600.0 andDiscount: 25.
    	Cargo from: 'Kyiv' to: 'Kharkiv' withWeight: 4.7 andDist: 420.0.
    	AccompanyingCargo from: 'Kyiv' to: 'Kharkiv' withWeight: 4.7 andDist: 420.0 andDiscount: 10.
    	Cargo from: 'Kharkiv' to: 'Lviv' withWeight: 6.8 andDist: 550.0.
    	AccompanyingCargo from: 'Kharkiv' to: 'Lviv' withWeight: 6.8 andDist: 550.0 andDiscount: 18.
	} andName: 'Test Transport Exchange'.
	transportExchange exchangeDiscount: 25.
	
	cargo1 := Cargo from: 'TestCargo1From' to: 'TestCargo1To' withWeight: 7.1 andDist: 281.1.
	cargo2 := Cargo from: 'TestCargo2From' to: 'TestCargo2To' withWeight: 7.2 andDist: 282.2.
	cargo3 := Cargo from: 'TestCargo3From' to: 'TestCargo3To' withWeight: 7.3 andDist: 283.3.
	
	accoCargo1 := AccompanyingCargo from: 'TestAccoCargo1From' to: 'TestAccoCargo1To' withWeight: 8.1 andDist: 601.1 andDiscount: 21.
	accoCargo2 := AccompanyingCargo from: 'TestAccoCargo2From' to: 'TestAccoCargo2To' withWeight: 8.2 andDist: 602.1 andDiscount: 22.
	accoCargo2 := AccompanyingCargo from: 'TestAccoCargo3From' to: 'TestAccoCargo3To' withWeight: 8.3 andDist: 603.1 andDiscount: 23.