distribution report
reportValueDistributionFor: fieldName in: formName from: startDate to: endDate satisfying: formConditionBlock onError: aBlock
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| secondsToRun filteredCollection |

	secondsToRun := Time secondsElapsedTime: [
									filteredCollection := (self fieldInstancesOf: fieldName in: formName) 
											select: [:fieldInst | (startDate <= fieldInst parentObject createdTime) 
																	and: [(fieldInst parentObject createdTime <= endDate)
																and: [formConditionBlock asBpmBlock value: fieldInst parentObject onError: aBlock]]
											]
							].

	^(self reportValueDistributionForFieldCollection: filteredCollection)
		startDate: startDate;
		endDate: endDate;
		formName: formName; 
		conditionStringBlock: formConditionBlock blockSource;
		sumSecondsToConstruct: secondsToRun;
		yourself