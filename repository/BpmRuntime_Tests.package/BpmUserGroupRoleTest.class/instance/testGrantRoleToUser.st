test
testGrantRoleToUser

	1 to: 5 do: [:index | | environment fuser buser frole brole |
		environment := self getEnvironmentNamed: 'env-', index printString.
		fuser := self getUserNamed: 'fuser-', index printString.
		frole := self getFrontofficeRoleNamed: 'app1-front-role1-', index printString.
		buser := self getUserNamed: 'buser-', index printString.
		brole := self getBackofficeRoleNamed: 'app1-back-role1-', index printString.
		frole grantUser: fuser.
		brole grantUser: buser.
		self assert: (frole isGranted: fuser).
		self assert: (brole isGranted: buser).
		self deny: (fuser isBackofficeUserIn: environment).
		self assert: (buser isBackofficeUserIn: environment).
		self deny: (buser isFrontOfficeUserIn: environment).
		self assert: (fuser isFrontOfficeUserIn: environment).
		self deny: (buser isBackofficeUserAndAdminIn: environment).
		brole isAdmin: true. "is backoffice and admin user now"
		self assert: (buser isBackofficeUserAndAdminIn: environment).
		self assert: (fuser getVisibleApplicationsIn: environment) size equals: 1. "applications that can be reached by the user"
		self assert: (buser getVisibleApplicationsIn: environment) size equals: 4. "is backoffice and admin user --> can access all apps in the environment"
		self assert: (fuser getVisibleRolesIn: environment) size equals: 0.
		self assert: (buser getVisibleRolesIn: environment) size equals: 8. "is backoffice and admin user --> can see all roles in the environment"
		self assert: (buser getVisibleUsersIn: environment) size equals: 2. "is backoffice and admin user --> can see all users in the environment"
		brole isAdmin: false. "is backoffice but NOT an admin user now"
		self assert: (buser getVisibleRolesIn: environment) size equals: 2. "is backoffice but NOT admin user --> can see only roles of its app in the environment"
		self assert: (buser getVisibleApplicationsIn: environment) size equals: 1. "is backoffice but NOT admin user --> can access only apps of its role in the environment"
		self assert: (fuser getVisibleUsersIn: environment) size equals: 0.
		self assert: (buser getVisibleUsersIn: environment) size equals: 1. "is backoffice but NOT admin user --> can see only users of its apps in the environment"
		self assert: frole usersAssociationsSize equals: 1. "each grant or ungrant creates an entry in role's <usersAssociations> collection"
		self assert: brole usersAssociationsSize equals: 1.
		self assert: fuser rolesAssociationSize equals: 1. "each grant or ungrant creates an entry in user's <rolesAssociation> collection"
		self assert: buser rolesAssociationSize equals: 1.
		frole ungrantUser: fuser.
		brole ungrantUser: buser.
		self assert: (fuser getVisibleApplicationsIn: environment) size equals: 0.
		self assert: (buser getVisibleApplicationsIn: environment) size equals: 0.
		self assert: (fuser getVisibleRolesIn: environment) size equals: 0.
		self assert: (buser getVisibleRolesIn: environment) size equals: 0.
		self assert: (fuser getVisibleUsersIn: environment) size equals: 0.
		self assert: (buser getVisibleUsersIn: environment) size equals: 0.
		self assert: frole usersAssociationsSize equals: 2.
		self assert: brole usersAssociationsSize equals: 2.
		self assert: fuser rolesAssociationSize equals: 2.
		self assert: buser rolesAssociationSize equals: 2.
		self deny: (frole isGranted: fuser).
		self deny: (brole isGranted: buser).
		frole grantUser: fuser.
		brole grantUser: buser.
		self assert: frole usersAssociationsSize equals: 3.
		self assert: brole usersAssociationsSize equals: 3.
		self assert: fuser rolesAssociationSize equals: 3.
		self assert: buser rolesAssociationSize equals: 3.
		self assert: (frole isGranted: fuser).
		self assert: (brole isGranted: buser).
		frole ungrantUser: fuser.
		brole ungrantUser: buser.
	].