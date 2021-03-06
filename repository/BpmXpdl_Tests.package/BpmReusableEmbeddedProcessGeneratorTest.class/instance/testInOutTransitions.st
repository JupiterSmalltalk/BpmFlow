tests
testInOutTransitions
	| task processDefinition subProc1 subProc2 |

	processDefinition := self getTopProcess.
	subProc1 := processDefinition getSubProcessTaskNamed: 'embedded-sub-proc' ifNone: [self assert: false].
	subProc2 := processDefinition getSubProcessTaskNamed: 'reusable-sub-proc' ifNone: [self assert: false].
	task := processDefinition getScriptNamed: 'script' ifNone: [self assert: false].

	self assert: (processDefinition startEventOutTransitionsLast == task inTransitionsLast).

	self assert: (task outTransitionsLast == subProc1 inTransitionsLast).
	self assert: (subProc1 outTransitionsLast == subProc2 inTransitionsLast).
	self assert: (subProc2 outTransitionsLast == (processDefinition getEndEventNamed: 'end' ifNone: [self assert: false]) inTransitionsLast).