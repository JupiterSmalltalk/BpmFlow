warning items creation
addActivityWithMixedConditionsItem: aXPDLActivityNode

	detectedItems add: (
		self createItemReportType: 'Warning' 
				code: 100
				xpdlObject: aXPDLActivityNode
				title: 'Mixed Start Conditions'
				description: 'Activity [', aXPDLActivityNode getName, '] in Process [', aXPDLActivityNode workflow getName, '] has Mixed Start Conditions (maybe not an error)'
				solution: 'If it is applicable: Add a condition to all transitions or remove all conditions from all transitions')