other
createProcessesDefinition
	| xpdlReader processGenerator |

	xpdlReader := (self defaultXpdlReaderClass forProcessNamed: 'Event Based Gateway' withString: XPDLProcessDefinitionTemplate xpdlExample_event_based_gateway_01)
			connectProcesses;
			yourself.

	processGenerator := BpmProcessGenerator on: xpdlReader xpdlPackages.
	processGenerator 
		mapProcess: 'House Purchase with Loan' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test');
		mapProcess: 'House Loan' toApplication: (self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test');
		generateAllProcess.

	processGenerator processes do: [:each | each addToCache].

	receiverProcesDef := processGenerator getProcessDefinitionNamed: 'House Purchase with Loan' ifNone: [self assert: false].