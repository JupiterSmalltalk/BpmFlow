inform
onAnyActionInformTo: aBpmRole
	"The receiver register the role <aBpmRole> to be informed when any action is performed."

	self on: #creation informTo: aBpmRole.

	self on: #modification informTo: aBpmRole.

	self on: #finalization informTo: aBpmRole.

	self on: #take informTo: aBpmRole.

	self on: #untake informTo: aBpmRole.

	self on: #cancelation informTo: aBpmRole.