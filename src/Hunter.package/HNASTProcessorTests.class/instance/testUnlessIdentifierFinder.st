tests
testUnlessIdentifierFinder
	| ast processor identifiers |
	ast := self basicAST.
	identifiers := OrderedCollection new.
	processor := HNBasicASTProcessor new specify: [ :on |
		on node if: #hasTypeIdentifier;
			unless: [ :n | n name = 'foo' ];
			do: [ :id | identifiers add: id name ]
	].
	ast accept: processor.
	"some appear twice because of parser desugaring"
	self assert: identifiers asArray equals: {
		'qux'. 'bar'. 'bar'. 'baz'. 'baz'. 'quux'. 'corge'
	}