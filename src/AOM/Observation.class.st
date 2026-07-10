Class {
	#name : 'Observation',
	#superclass : 'Object',
	#instVars : [
		'name',
		'observationValue',
		'id'
	],
	#category : 'AOM-Observations',
	#package : 'AOM',
	#tag : 'Observations'
}

{ #category : 'accessing' }
Observation class >> identifiedBy: anObject [ 
	^self new
		id: anObject;
		yourself
]

{ #category : 'accessing' }
Observation >> id [
	^ id
]

{ #category : 'accessing' }
Observation >> id: anObject [ 
	id := anObject
]

{ #category : 'accessing' }
Observation >> name [
	^ name
]

{ #category : 'accessing' }
Observation >> name: anObject [
	name := anObject
]

{ #category : 'accessing' }
Observation >> observationValue [
	^ observationValue
]

{ #category : 'accessing' }
Observation >> observationValue: anObject [
	observationValue := anObject
]
