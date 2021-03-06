other
reportTable

	^(SewafSelectTableReport summary: 'Import Errors List')
		rows: warnings; "get collection elements"
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new 
						add: self createTypeColumn;
						add: self createCodeColumn;
						add: self createIsResumableColumn;
						add: self createTitleColumn;
						add: self createDescriptionColumn;
						add: self createSolutionColumn;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself