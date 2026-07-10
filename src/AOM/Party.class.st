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

{ #category : 'as yet unclassified' }
Party >> observationNamed: aSymbol [

    ^ ((self observationsNamed: aSymbol)
        ifEmpty: [ nil ]
        ifNotEmpty: [ :all | all first ])
        ifNotNil: #observationValue
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
Party >> observationsNamed: aSymbol [

    ^ observations
        select: [ :each | each name = aSymbol ]
]

{ #category : 'as yet unclassified' }
Party >> recordFactNamed: aSymbol value: anObject [

    observations add:
        ((Observation identifiedBy: ObservationId new)
            name: aSymbol;
            observationValue: anObject;
            yourself)
]
