test
testExecuteProcess_task4_to_end
	| currentTask currentTask2 gateway endArtifact |

	self assert: (procInstance startEventName = 'start all').
	"Step 1 - Form [task-1]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task1 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-1').
	"Step 2 - Gateway Evaluation"
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'split 2 and 3').
	"Step 3 - Form [task-2] and [task-3]"
	currentTask :=  procInstance currentActivities first.
	currentTask2 :=  procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task2_1 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-2').
	self processExecutionSimulator takeAndFinalizeTask: currentTask2 withUserNamed: 'alberto' withForm: self formInstance_task3_1 on: procInstance.
	self assert: (currentTask2 getDefinitionName = 'task-3').
	"Step 4 - TWO Gateway Evaluations"
	gateway := procInstance executedGatewaysSecond.
	self assert: (gateway getDefinitionName = 'merge 2 and 3').
	gateway := procInstance executedGatewaysLast.
	self assert: (gateway getDefinitionName = 'task 4 or 5').
	"Step 5 - Form [task-5]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task4 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-4').
	"Step 6 - Form [task-6]"
	currentTask := procInstance currentActivities last.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task6 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-6').
	"Step 7 - Form [task-7]"
	currentTask := procInstance currentActivities last.

	self assert: procInstance isRunning.
	self processExecutionSimulator takeAndFinalizeTask: currentTask withUserNamed: 'alberto' withForm: self formInstance_task7 on: procInstance.
	self assert: (currentTask getDefinitionName = 'task-7').
	self deny: procInstance isRunning.
	"Step 8 - Process End"
	endArtifact := procInstance endEventsAsOrderedCollection detect: [:each | each getDefinitionName = 'end all'] ifNone: [self assert: false].
	self assert: endArtifact isEndEvent.