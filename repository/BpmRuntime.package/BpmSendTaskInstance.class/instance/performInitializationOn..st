process execution
performInitializationOn: aBpmProcessInstance
	"The receiver perform the creation operation in the process instance <aBpmProcessInstance>.
	This operatoin initialize the receiver inside the process <aBpmProcessInstance>"

	aBpmProcessInstance registerEvent: self. "this task is registered as an event in <aBpmProcessInstance>"

	message := self createInterProcessMessageFor: aBpmProcessInstance.

	"here the target process identification is done by a set of values rather than the process id"
	definition identificationFields ifNotNil: [message receiverIdentificationFields: (self collectValuesOf: definition identificationFields in: aBpmProcessInstance)].

	message variablesToSet: (self collectValuesOf: definition fieldNamesToSet in: aBpmProcessInstance).

	"for some reason the message could not be sent. (no target process found, event gateway or event does not exist or a Timer has closed the event gateway)"
	[message send] on: (NoProcessException, NoGatewayException, NoEventException) do: [:ex | 
		sendException:= ex.
		self getAttachedErrorEvent 
		ifNotNil: [:eventDefinition | | properties |
			properties := Dictionary new at: 'errorCode' put: eventDefinition errorCode; yourself.
			self triggerAttachedEventNamed: eventDefinition name withProperties: properties] "generate next transitions from the event"
		].

	self performFinalization.

	self generateNextRunningTransitions.