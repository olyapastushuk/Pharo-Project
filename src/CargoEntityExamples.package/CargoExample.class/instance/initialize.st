initialization
initialize

	ui := UIManager default.
	cargos := CargoContainer new.
	cargos addAll: {
			(Cargo
				 from: 'Lviv'
				 to: 'Kyiv'
				 withWeight: 2.3
				 andDist: 542.0).
			(AccompanyingCargo
				 from: 'Kharkiv'
				 to: 'Poltava'
				 withWeight: 4.6
				 andDist: 143.0
				 andDiscount: 0.12).
			(AccompanyingCargo
				 from: 'Poltava'
				 to: 'Vinnytsia'
				 withWeight: 6.5
				 andDist: 580
				 andDiscount: 0.18).
			(Cargo
				 from: 'Vinnytsia'
				 to: 'Ivano-Frankivsk'
				 withWeight: 5.4
				 andDist: 365.0) }