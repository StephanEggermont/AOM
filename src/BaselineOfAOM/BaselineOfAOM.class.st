Class {
	#name : 'BaselineOfAOM',
	#superclass : 'BaselineOf',
	#category : 'BaselineOfAOM',
	#package : 'BaselineOfAOM'
}

{ #category : 'loading' }
BaselineOfAOM class >> loadLepiter [
	IceRepository registry  
		detect: [ :aRepository |
			aRepository name = 'AOM' ]
		ifFound: [ :aRepository | 
			| defaultDatabase currentProperties |
			defaultDatabase := LeDatabasesRegistry defaultLogicalDatabase.
			currentProperties := defaultDatabase properties.
			currentProperties addRegisteredDirectory: aRepository repositoryDirectory / 'lepiter'.
			defaultDatabase reload ]
		ifNone: [
			self inform: 'Repository not found.' ]
]

{ #category : 'baseline' }
BaselineOfAOM >> baseline: spec [
	<baseline>
		^ spec for: #common do: [
			spec package: 'AOM'
		]
]
