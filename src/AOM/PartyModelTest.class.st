Class {
	#name : 'PartyModelTest',
	#superclass : 'TestCase',
	#category : 'AOM-Party',
	#package : 'AOM',
	#tag : 'Party'
}

{ #category : 'as yet unclassified' }
PartyModelTest >> testObservationHasIdentity [

    | observation |

    observation :=
        Observation identifiedBy: ObservationId new.

    self assert: observation id notNil.
]

{ #category : 'as yet unclassified' }
PartyModelTest >> testObservationIsEffectiveDuringAnInterval [

    | address |

    address := Observation identifiedBy: ObservationId new.

    address
        name: #address;
        observationValue: 'Paris';
        validity: (Validity from: (Date year: 2025 month: 1 day: 1)to: (Date year: 2025 month: 3 day: 31)).

    self assert:
        (address
            isEffectiveOn:
                (Date year: 2025 month: 2 day: 15)).
]

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
            (person observationNamed: #name)
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
PartyModelTest >> testPartyMayHaveSeveralPhoneNumbers [

    | alice |

    alice := Person identifiedBy: PartyId new.

    alice
        recordFactNamed: #phone
        value: '06-11111111'.

    alice
        recordFactNamed: #phone
        value: '06-22222222'.

    self
        assert: (alice observationsNamed: #phone) size
        equals: 2.
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
