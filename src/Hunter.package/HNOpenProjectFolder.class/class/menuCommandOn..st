world menu
menuCommandOn: aBuilder
	<worldMenu>
	(aBuilder item: #'Open JSON file')
			order: 0.002; 
			parent: self projectName asSymbol;
			label: 'Open Javascript project directory';
			icon: self image;
			action: [ self new openFile ]