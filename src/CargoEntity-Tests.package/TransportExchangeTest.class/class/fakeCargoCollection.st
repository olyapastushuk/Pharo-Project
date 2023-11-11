mocking
fakeCargoCollection
	| te |
	te := TransportExchange withAll: {
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
	te exchangeDiscount: 25.
	^ te