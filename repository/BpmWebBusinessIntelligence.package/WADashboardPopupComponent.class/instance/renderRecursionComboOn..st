chart options
renderRecursionComboOn: html

	self createReverseTranslation.

	html label attributeAt: 'for' put: 'recursion'; with: ('Recursion' translateIn: self session).
	html select 
		class: 'display-block';
		attributeAt: 'id' put: 'recursion';
		list: recursionNames; 
		callback: [:value |
			self addValue: value named: 'recursion'.
		]