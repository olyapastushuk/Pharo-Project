instance creation
newByDialogInput
	"Create a new Cargo Instance by reading the user input from a GUI dialog."

	| string stream type |
	string := UIManager default
		          request: 'Input the cargo data separated by ;'
		          initialAnswer: 'c|ac;Uman;Chernivtsi;3.7;456.0;[0.2;]'
		          title: 'Create a Cargo instance'.
	string ifNil: [ ^ nil ].
	stream := string readStream.
	type := stream upTo: $;.
	type = 'c' ifTrue: [
		^ Cargo
			  from: (stream upTo: $;)
			  to: (stream upTo: $;)
			  withWeight: (stream upTo: $;) asNumber
			  andDist: (stream upTo: $;) asNumber ].
	type = 'ac' ifTrue: [
		^ AccompanyingCargo
			  from: (stream upTo: $;)
			  to: (stream upTo: $;)
			  withWeight: (stream upTo: $;) asNumber
			  andDist: (stream upTo: $;) asNumber
			  andDiscount: (stream upTo: $;) asNumber ].
	^ self error: 'Invalid cargo type. You can create either standard Cargo(c) or AccompanyingCargo(ac)!'