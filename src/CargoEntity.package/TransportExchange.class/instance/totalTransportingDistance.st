calculating
totalTransportingDistance
	"Calculates the total transporting distance of all cargo instances in a collection"

	^ (self
		   inject: 0
		   into: [ :totalDist :cargo | totalDist + cargo transportDistance ])
		  round: 2