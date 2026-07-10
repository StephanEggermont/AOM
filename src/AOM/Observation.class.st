Class {
	#name : 'Observation',
	#superclass : 'Object',
	#instVars : [
		'name',
		'observationValue'
	],
	#category : 'AOM-Observations',
	#package : 'AOM',
	#tag : 'Observations'
}

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
