top menu
showMyDashboardComposite

	(arena isKindOf: WAMyBpmDashboardsComposite)
	ifTrue: [^arena].

	^WAMyBpmDashboardsComposite parent: self