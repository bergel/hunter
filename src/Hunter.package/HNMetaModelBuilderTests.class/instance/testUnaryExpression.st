tests
testUnaryExpression
	| ast |
	ast := (HNProgramNode new
		sourceType: 'script';
		body: {
			(HNUnaryExpressionNode new
				operator: '+';
				argument: (
					HNArrowFunctionExpressionNode new
						params: {};
						body: (HNLiteralNode new value: 42; raw: '42');
						expression: true;
						generator: true;
						async: true
				)
			)
		}
	).
	ast accept: builder.
	self assert: self defaultProgram functions size equals: 1.
	self assert: self defaultProgram functions first name isNil.
