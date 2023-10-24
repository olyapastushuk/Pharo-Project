instance creation
newByDialogInput
	"Create a new Cargo Instance by reading the user input from a GUI dialog."

	| string stream type |
	string := UIManager default
		          request: 'Input the cargo data separated by ;'
		          initialAnswer: 'c|ac;Lviv;Kyiv;66.6;666.666;[0.4;]'
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
	^ self error: 'Invalid type. Use either c or ac type.'