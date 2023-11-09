tests - transforming
testChangeStatusOfTo
	| indexes |
	indexes := #( 1 2 3 ).
	transportExchange changeStatusOf: indexes to: DeliveryStatusEnum paidAndReceived.
	indexes do: [ :i | (transportExchange at: i) deliveryStatus = DeliveryStatusEnum paidAndReceived ]