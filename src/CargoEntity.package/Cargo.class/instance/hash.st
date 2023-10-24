comparing
hash
	"Hash method for a Cargo class"

	"scope: class-variables  &  instance-variables"

	^ (receiverAddress printString , senderAddress printString
	   , weight printString , transportDistance printString) hash