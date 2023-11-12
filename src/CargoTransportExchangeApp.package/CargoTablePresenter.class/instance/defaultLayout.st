layout
defaultLayout

	| searchBarL exchangeStateL tableSearchL assembleL rightControlsL statusL massUpdateL |
	searchBarL := self newBoxLayoutLeftToRight
		              spacing: 15;
		              add: senderSearchInput expand: true fill: true;
		              add: receiverSearchInput expand: true fill: true;
		              add: statusDroplist expand: true fill: true;
		              yourself.
	exchangeStateL := self newGridLayout build: [ :builder |
		                  builder
			                  add: 'Delivery cost rate:';
			                  add: deliveryCostRateNumberInput;
			                  nextRow;
			                  add: 'Accompanying discount rate:';
			                  add: accompanyingDiscountNumberInput;
			                  nextRow;
			                  add: 'Total shipping price:';
			                  add: totalShippingPriceNumber;
			                  nextRow;
			                  add: 'Total distance:';
			                  add: totalDistanceNumber;
			                  nextRow;
			                  add: saveExchangePropsButtons;
			                  add: resetExchangePropsButton;
			                  nextRow ].

	tableSearchL := self newBoxLayoutTopToBottom
		                spacing: 15;
		                add: cargoTable;
		                add: searchBarL expand: false;
		                yourself.

	assembleL := self newBoxLayoutTopToBottom
		             spacing: 15;
		             add: (self newBoxLayoutLeftToRight
				              spacing: 15;
				              add: accompanyingSelectionList;
				              add: mainSelectionList;
				              yourself);
		             add: (self newGridLayout build: [ :builder |
				              builder
					              add: setAccompanyingButton;
					              add: setMainCargosButton;
					              add: assembleButton;
					              nextRow ]);
		             yourself.

	statusL := self newGridLayout build: [ :builder |
		           builder
			           add: statusSelectDropdown;
			           nextRow;
			           add: updateStatusButton ].

	massUpdateL := self newBoxLayoutTopToBottom
		               spacing: 15;
		               add: assembleL;
		               add: statusL;
		               yourself.

	rightControlsL := self newBoxLayoutTopToBottom
		                  spacing: 15;
		                  add: exchangeStateL;
		                  add: massUpdateL;
		                  yourself.

	^ self newBoxLayoutLeftToRight
		  spacing: 15;
		  add: tableSearchL;
		  add: rightControlsL;
		  yourself