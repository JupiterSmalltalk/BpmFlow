search area
renderSearchProcessIdFieldOn: html

	html label attributeAt: 'for' put: 'processId'; with: ('Process Id' translateIn: self session).
	html textInput 
				attributeAt: 'id' put: 'processId'; 
				callback: [:value | self addSearchValue: value named: 'id'];
				value: (self searchValueAt: 'id').