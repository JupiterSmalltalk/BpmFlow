*bpmRuntime_Tests
removeFrom: envName apps: appNames processesName: processNames rolesName: rolesName backofficeRoles: backofficeRoles usersName: usersName deleteEnvironment: aBoolean
	""
	| environment applications |

	usersName do: [:each | (self getUserNamed: each) resetMessagesBoxesAndRoles]. "<usersName> collection must no have <admin> user --> this will remove <admins> role from <admin> user"

	environment := self defaultEnvironmentClass getExistingEnvironmentOrCreateNewNamed: envName.
	applications := appNames collect: [:each | self getOrbeonApplicationClass getExistingBpmApplicationOrCreateNewNamed: each].
	applications do:[:each | environment unregisterApplication: each].

	appNames do: [:each | 
		rolesName do: [:roleName | (self defaultFrontOfficeRoleClass getRoleNamed: roleName in: each) ifNotNil: [:role | role removeFromCache]].
		backofficeRoles do: [:roleName | (self defaultBackOfficeRoleClass getRoleNamed: roleName in: each) ifNotNil: [:role | role removeFromCache]].
		processNames do: [:procName | (self defaultProcessDefinitionClass getAllProcessesNamed: procName in: each) do: [:eachProc | eachProc resetFormFieldInstances; removeFromCache]].
	].  

	applications  do:[:each | each resetDefinitionRegistry; removeFromCache].

	usersName do: [:usrName | environment unregisterUser: (self getUserNamed: usrName)].

	aBoolean ifTrue: [environment removeFromCache].