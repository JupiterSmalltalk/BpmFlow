import checks
getMergingEventGateways
	"The receiver detect gateway events used to merge transitions (not allowed)"
	| report activitiesNames |

	report := OrderedCollection new.

	activitiesNames := Dictionary new.
	(activities select: [:each |each isGatewayNode and:[each isEventGateway]]) do: [:xpdlGateway | 
			(xpdlGateway inTransitions size > 1) ifTrue:[ | reportItem |		
				reportItem := XPDLItemImportReport new type: 'Error';
					title: 'Merging Event Gateway';
					description: 'Merging Events Gateway are NOT allowed';
					solution: 'User a regular Gateway for Merging';
					yourself.
				report add: reportItem].
	].

	^report