other
visitXpdlPackage: aXPDLPackageNode
	"The receiver start visiting the XPDL package <aXPDLPackageNode> and from this XPDL element all way down"

	aXPDLPackageNode pools do: [:xpdlPoolNode | xpdlPoolNode acceptVisitor: self].

	self generateAdditionalReportItems