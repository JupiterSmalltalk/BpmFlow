gateways
drawGatewayAt: aPoint id: id height: height width: width fillColor: fillColor stroke: stroke
	| figure rotation textPoint |
	"aPoint + 5 >> to fix a mismatch with Bizagi coordinates"
	figure := JASVGITagRectangle newAt: aPoint + 5 id: id width: width height: height stroke: stroke fillColor: fillColor.

	rotation := 'rotate(-45 ', figure center x printString, ' ', figure center y printString, ')'.
	figure transform: rotation.

	textPoint := aPoint x @ (aPoint y - 10).

	namesAndTags at: id put: figure. "map the Gateway name with the Gateway id"

	self draw: figure.

	self addFigure: figure toGroup: self defaultNameForProcessGroup.
	self addFigure: (self drawText: id at: textPoint textSizePx: self defaultGatewayNameSize) toGroup: self defaultNameForProcessGroup.

	^figure