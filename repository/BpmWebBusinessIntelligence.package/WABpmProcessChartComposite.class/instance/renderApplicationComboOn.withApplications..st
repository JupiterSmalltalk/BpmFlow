search area
renderApplicationComboOn: html withApplications: applicationNames

	^self renderGenericActiveComboOn: html withList: (#(''), applicationNames) forVariable: 'application' label: ('Application' translateIn: self session)