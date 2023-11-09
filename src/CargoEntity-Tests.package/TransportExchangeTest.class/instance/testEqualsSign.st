tests - comparing
testEqualsSign

	| teCopy |
	teCopy := TransportExchange withAll: transportExchange.
	self assert: transportExchange equals: teCopy.
	
	teCopy add: Cargo new.
	self assert: transportExchange ~= teCopy