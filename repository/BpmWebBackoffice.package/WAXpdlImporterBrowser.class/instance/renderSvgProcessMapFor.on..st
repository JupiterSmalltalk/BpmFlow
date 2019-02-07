import
renderSvgProcessMapFor: aBpmProcessDefinition on: html
	| svgCanvas |

	svgCanvas := WABpmnCanvasComposite parent: self.

	svgCanvas model: aBpmProcessDefinition;
		disableParentProcessIcon. "process are no imported yet (no in the cache) so searching a parent process for its name will fail. So parent navigation is disabled"

	"aBpmProcessDefinition isTopProcess 
	ifFalse: [svgCanvas subProcess: aBpmProcessDefinition]
	ifTrue: [svgCanvas subProcess: nil]."

	html div with: [html render: svgCanvas]