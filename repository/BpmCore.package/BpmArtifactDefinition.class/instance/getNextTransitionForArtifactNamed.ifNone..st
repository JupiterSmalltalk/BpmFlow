other
getNextTransitionForArtifactNamed: aString ifNone: aBlock
	"The receiver answer the next transition definition that goes to artifact named <aString>"

	^outTransitions detect: [:transition | transition endArtifactName = aString] ifNone: aBlock