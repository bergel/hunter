visiting
visitObjectExpression: aNode
	self matcher processNode: aNode with: [
		self visitChildrenOf: aNode at: #properties
	]