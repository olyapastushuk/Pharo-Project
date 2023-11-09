running
setUp

	super setUp.

	cargo1 := Cargo from: 'TestCargo1From' to: 'TestCargo1To' withWeight: 7.1 andDist: 281.1.
	cargo2 := Cargo from: 'TestCargo2From' to: 'TestCargo2To' withWeight: 7.2 andDist: 282.2.
	cargo3 := Cargo from: 'TestCargo3From' to: 'TestCargo3To' withWeight: 7.3 andDist: 283.3