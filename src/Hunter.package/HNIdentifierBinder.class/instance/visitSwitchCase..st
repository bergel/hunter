visiting
visitSwitchCase: aNode
	self checkScopeAtNode: aNode.
	aNode test ifNotNil: [:test | test accept: self].
	aNode consequent do: [ :stmt | stmt accept: self ]