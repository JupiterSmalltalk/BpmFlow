svg generator
getSVGTitleForAssignment: aBpmTaskAssignment

	^'#', aBpmTaskAssignment processId printString, 
		' | Process Name: ', aBpmTaskAssignment processName,
		' | User: ', aBpmTaskAssignment printUserName,
		' | State: ', aBpmTaskAssignment printProcessState,
		' | Creation: ', aBpmTaskAssignment printAssignmentDate