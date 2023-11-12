initialization
initializeWindow: aWindowPresenter

	^ aWindowPresenter
		  initialExtent: 1024 @ 720;
		  title: 'Cargo Collection Table';
		  toolbar: toolbar