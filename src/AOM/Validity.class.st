Class {
	#name : 'Validity',
	#superclass : 'Object',
	#instVars : [
		'from',
		'to'
	],
	#category : 'AOM-Observations',
	#package : 'AOM',
	#tag : 'Observations'
}

{ #category : 'as yet unclassified' }
Validity class >> from: aStart to: anEnd [

    ^ self new
        from: aStart;
        to: anEnd;
        yourself
]

{ #category : 'accessing' }
Validity >> from [
	^ from
]

{ #category : 'accessing' }
Validity >> from: anObject [
	from := anObject
]

{ #category : 'as yet unclassified' }
Validity >> includes: aDate [

    ^ (from isNil or: [ from <= aDate ])
        and:
        [ to isNil or: [ aDate <= to ] ]
]

{ #category : 'accessing' }
Validity >> to [
	^ to
]

{ #category : 'accessing' }
Validity >> to: anObject [
	to := anObject
]
