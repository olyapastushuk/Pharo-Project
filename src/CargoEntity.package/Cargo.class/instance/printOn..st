printing
printOn: aStream
	"Outputs the visual representation of a Cargo instance to aStream."

	aStream << self className << '(';
		print: senderAddress; << ', ';
		print: receiverAddress; << ', ';
		print: weight; << ', ';
		print: transportDistance; << ', ';
		print: deliveryStatus; << ')'