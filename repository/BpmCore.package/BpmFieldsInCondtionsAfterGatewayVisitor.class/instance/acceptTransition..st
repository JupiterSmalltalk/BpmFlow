transition
acceptTransition: aBpmTransitionDefinition
	"The receiver accept the transition <aBpmTransitionDefinition> and check if it has a condition.
	Get all fields used in the condition and search in all <visitedTasks> for the used field.
	If the field is not found --> the condition is going to fail"

	(visitedTransitions identityIncludes: aBpmTransitionDefinition) ifTrue: [^self].

	visitedTransitions add: aBpmTransitionDefinition.
	aBpmTransitionDefinition getUsedFieldsNamesInCondition do: [:fieldName | 
		((visitedTasks select: [:each | each isOrbeonTask or:[each isSeasideTask]]) anySatisfy: [:task | task getComponentClass getFieldsNames includes: fieldName]) 
		ifFalse: [missingEvaluationFields add: fieldName].
	].

	aBpmTransitionDefinition endArtifactDo: [:endArt | endArt acceptVisitor: self]