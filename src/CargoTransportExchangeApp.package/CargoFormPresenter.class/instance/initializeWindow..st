initialization
initializeWindow: aWindowPresenter

	^ aWindowPresenter
		  title: self model className , ' Form';
		  initialExtent: 480 @ 300;
		  centered