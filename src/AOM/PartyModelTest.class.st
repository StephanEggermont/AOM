Class {
	#name : 'PartyModelTest',
	#superclass : 'TestCase',
	#category : 'AOM-Party',
	#package : 'AOM',
	#tag : 'Party'
}

{ #category : 'as yet unclassified' }
PartyModelTest >> testOrganizationIsAParty [
	|organization|
	organization := Organization new.
	self assert: (organization isKindOf: Party)
]

{ #category : 'as yet unclassified' }
PartyModelTest >> testPartyHasStableIdentity [

    | id party |

    id := PartyId new.

    party := Person identifiedBy: id.

    self assert: party id equals: id.
]

{ #category : 'as yet unclassified' }
PartyModelTest >> testPersonIsAParty [
	|person|
	person := Person new.
	self assert: (person isKindOf: Party)
]
