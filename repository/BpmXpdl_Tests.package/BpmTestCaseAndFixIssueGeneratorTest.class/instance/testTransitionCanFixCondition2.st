other
testTransitionCanFixCondition2
	| process transition |

	process := self getFixIssueProcess.

	transition := process getTransitionNamed: 'create-report' ifNone: [self assert: false].
	self assert: (transition evaluationCodeIsEqualTo: '[:form | form developerCanFix = ''yes'']').


	transition := process getTransitionNamed: 'no-fix-report' ifNone: [self assert: false].
	self assert: (transition evaluationCodeIsEqualTo: '[:form | form developerCanFix = ''no'']')