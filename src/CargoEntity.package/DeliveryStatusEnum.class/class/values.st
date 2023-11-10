enumerating
values
	"Return a list of enum values. Subclasses must override this method"

	^ {
		  self pending.
		  self assembling.
		  self assembledAndWaitingForDelivery.
		  self inTransit.
		  self deliveredAndWaitingForReceiver.
		  self paidAndReceived }