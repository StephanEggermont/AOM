Class {
	#name : 'Party',
	#superclass : 'Object',
	#instVars : [
		'id',
		'observations'
	],
	#category : 'AOM-Party',
	#package : 'AOM',
	#tag : 'Party'
}

{ #category : 'as yet unclassified' }
Party >> factNamed: aSymbol [

    ^ (observations
            detect: [ :each | each name = aSymbol ]
            ifNone: [ nil ])
        ifNotNil: #observationValue
]

{ #category : 'as yet unclassified' }
Party >> id [
	^ id
]

{ #category : 'as yet unclassified' }
Party >> id: anId [ 
	id := anId 
]

{ #category : 'as yet unclassified' }
Party >> initialize [
	observations := OrderedCollection new
]

{ #category : 'accessing' }
Party >> observations [
	^ observations
]

{ #category : 'accessing' }
Party >> observations: anObject [
	observations := anObject
]

{ #category : 'as yet unclassified' }
Party >> recordFactNamed: aSymbol value: anObject [

    observations add:
        (Observation new
            name: aSymbol;
            observationValue: anObject;
            yourself)
]
