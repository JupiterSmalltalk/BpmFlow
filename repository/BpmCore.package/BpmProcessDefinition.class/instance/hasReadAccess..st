other
hasReadAccess: aBpmUser
	"Answer whether or not <aBpmUser> has read access to the receiver.
	The user has to have at least one role present in the receiver or be a backoffice user"

	^(aBpmUser includesAnyRoleOf: roles in: self bpmEnvironment) or:[aBpmUser isBackofficeUserIn: self bpmEnvironment].