other
formInstance_citizen_appliance

	^self formCreatorClass 
		buildFormInstanceFrom: self newInstanceTemplate formInstance_ue_citizen_appliance_reuse_form
		definitionNamed: 'citizen-appliance'
		app: 'ue' 
		definitionMethod: self newDefinitionTemplate formDefinition_ue_citizen_appliance_2
		in: procInstance