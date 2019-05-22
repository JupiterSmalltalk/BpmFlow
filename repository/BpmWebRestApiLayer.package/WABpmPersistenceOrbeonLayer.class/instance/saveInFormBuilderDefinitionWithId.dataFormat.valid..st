service-put
saveInFormBuilderDefinitionWithId: id dataFormat: dataFormatVersion valid: stringBool
	"This service is called by Orbeon when a user click on -Save- inside the Form Builder.
	A Form Definition has been saved "
	| apiOperation |
	<put>
	<path: '/crud/orbeon/builder/data/{1}/data.xml?data-format-version={2}&valid={3}'>

	(Boolean fromString: stringBool) 
	ifTrue: [ apiOperation := BpmOrbeonFormBuilderSaveApi newFor: self withXml: (self requestContext request bodyDecodeUsing: 'utf-8') id: id.

				apiOperation createFormReader.

				^apiOperation doIt]