other
renderTextOn: html text: aString at: aPoint textSizePx: textSizePx
	"The receiver draw the string <aString> at <aPoint> with id <id> and text size <textSizePx> "

	^self renderTextOn: html text: aString at: aPoint id: UUID new asString textSizePx: textSizePx color: 'black'