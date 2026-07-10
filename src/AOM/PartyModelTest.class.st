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
PartyModelTest >> testPartyCanRememberAFact [

    | person |

    person := Person identifiedBy: PartyId new.

    person
        recordFactNamed: #name
        value: 'Alice'.

    self
        assert:
            (person factNamed: #name)
        equals: 'Alice'.
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

{ #category : 'as yet unclassified' }
PartyModelTest >> testRecordingCreatesObservation [

    | party |

    party := Person identifiedBy: PartyId new.

    party
        recordFactNamed: #name
        value: 'Alice'.

    self assert: party observations size equals: 1.
]
