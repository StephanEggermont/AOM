Class {
	#name : 'Person',
	#superclass : 'Party',
	#category : 'AOM-Party',
	#package : 'AOM',
	#tag : 'Party'
}

{ #category : 'as yet unclassified' }
Person class >> identifiedBy: id [ 
	^self new
		id: id;
		yourself
]
