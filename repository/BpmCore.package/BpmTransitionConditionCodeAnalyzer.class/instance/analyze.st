code analyzer
analyze

	self ifParserNotABlock: [^self addDefaultNonBlockWarning].

	self checkOneArgumentBlockRule; "check the block has only one argument"
		checkBasicClassesAndSelectorsRule; "check that all receivers are the block argument or a basic class (Date, Time, TimeStamp)"
		checkBlockArgumentMessagesRule;
		checkUseOfInvalidClasses