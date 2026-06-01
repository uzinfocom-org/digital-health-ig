Profile: UZCoreImmunization
Parent: Immunization
Id: uz-core-immunization
Title: "UZ Core Immunization"
Description: "Uzbekistan Core Immunization profile, used to represent immunization events"

* ^experimental = true
* ^status = #active
* ^date = "2025-08-01"
* ^publisher = "Uzinfocom"

* identifier 0..* MS
* identifier ^short = "Business identifier"

* basedOn 0..* MS
* basedOn only Reference(CarePlan or MedicationRequest or ServiceRequest or UZCoreImmunizationRecommendation)
* basedOn ^short = "The legal basis for the event"

* status 1..1 MS
* status from ImmunizationStatusVS (required)
* status ^short = "Vaccination status"

* statusReason 0..1 MS
* statusReason from ImmunizationStatusReasonVS (required)
* statusReason ^short = "Status Reason"

* vaccineCode 1..1 MS
* vaccineCode from VaccineCodeVS (extensible)
* vaccineCode ^short = "Administered vaccine"

* administeredProduct 0..1 MS
* administeredProduct only CodeableReference(Medication)
* administeredProduct ^short = "Vaccine product"


* lotNumber 0..1 MS
* lotNumber ^short = "Vaccine batch number (lot number)"

* expirationDate 0..1 MS
* expirationDate ^short = "Vaccine expiry date"

* patient 1..1 MS
* patient only Reference(UZCorePatient)
* patient ^short = "Patient"

* encounter 0..1 MS
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Related contact"

* supportingInformation 0..* MS
* supportingInformation only Reference(
    UZCoreObservation or
    UZCoreCondition
)
* supportingInformation ^short = "Additional information"

* occurrence[x] 1..1 MS
* occurrence[x] ^short = "Date of vaccine administration"

* occurrenceDateTime MS
* occurrenceDateTime ^short = "Date (dateTime)"

* occurrenceString MS
* occurrenceString ^short = "Date (string)"

* primarySource 0..1 MS
* primarySource ^short = "Primary source"

* informationSource 0..1 MS
* informationSource only CodeableReference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreRelatedPerson or UZCoreOrganization)
* informationSource from ImmunizationOriginVS (extensible)
* informationSource ^short = "Data source"

* location 0..1 MS
* location only Reference(UZCoreLocation)
* location ^short = "Vaccination location"

* site 0..1 MS
* site from ImmunizationSiteVS (extensible)
* site ^short = "Administration site"

* route 0..1 MS
* route from RouteCodeVS (example)
* route ^short = "Route of administration"

* doseQuantity 0..1 MS
* doseQuantity ^short = "Dose"

* performer 0..* MS
* performer ^short = "Performer"

* performer.function 0..1 MS
* performer.function ^short = "Role"

* performer.actor 1..1 MS
* performer.actor only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or UZCoreRelatedPerson)
* performer.actor ^short = "Who completed"

* note 0..* MS
* note ^short = "Notes"

* reason 0..* MS
* reason only CodeableReference(UZCoreCondition or UZCoreObservation or DiagnosticReport)
* reason ^short = "Vaccination reason"

* isSubpotent 0..1 MS
* isSubpotent ^short = "Subpotent"

* subpotentReason 0..* MS
* subpotentReason from SubpotentReasonVS (example)
* subpotentReason ^short = "Subpotent reason"

* programEligibility 0..* MS
* programEligibility ^short = "Vaccination program"

* programEligibility.program 1..1 MS
* programEligibility.program ^short = "Program"

* programEligibility.programStatus 1..1 MS
* programEligibility.programStatus ^short = "Participation status"

* fundingSource 0..1 MS
* fundingSource from FundingSourceVS (example)
* fundingSource ^short = "Funding Source"

* reaction 0..* MS
* reaction ^short = "Reaction"

* reaction.date 0..1 MS
* reaction.date ^short = "Reaction date"

* reaction.manifestation 0..1 MS
* reaction.manifestation only CodeableReference(UZCoreObservation)
* reaction.manifestation from ReactionTypeVS
* reaction.manifestation ^short = "Manifestation"

* reaction.reported 0..1 MS
* reaction.reported ^short = "Self-reported"

* protocolApplied 0..* MS
* protocolApplied ^short = "Protocol"

* protocolApplied.series 0..1 MS
* protocolApplied.series ^short = "Series"

* protocolApplied.authority 0..1 MS
* protocolApplied.authority only Reference(UZCoreOrganization)
* protocolApplied.authority ^short = "Authority organization"

* protocolApplied.targetDisease 0..* MS
* protocolApplied.targetDisease from TargetDiseaseVS (extensible)
* protocolApplied.targetDisease ^short = "Target Disease"

* protocolApplied.doseNumber 1..1 MS
* protocolApplied.doseNumber ^short = "Dose number"

* protocolApplied.seriesDoses 0..1 MS
* protocolApplied.seriesDoses ^short = "Total doses"




Instance: immunization-example-001
InstanceOf: UZCoreImmunization
Usage: #example
Title: "UZ Core Immunization Example"
Description: "Example immunization event for UZ Core Immunization profile."

* identifier[0].system = "https://terminology.dhp.uz/fhir/core/NamingSystem/immunization-identifier"
* identifier[0].value = "IMM-2026-0001"

* basedOn[0] = Reference(immunization-recommendation-example)

* status = #completed
* statusReason = $v3-ActReason#IMMUNE "immunity"

* vaccineCode = $cvx#19 "Bacillus Calmette-Guerin vaccine"

* administeredProduct.reference = Reference(medication-imm-001)

* lotNumber = "LOT-BCG-2026-01"
* expirationDate = "2027-01-31"

* patient = Reference(example-salim)
* encounter = Reference(example-encounter)

* supportingInformation[0] = Reference(body-temperature-example)

* occurrenceDateTime = "2026-04-28T10:30:00+05:00"

* primarySource = true

* informationSource.concept = $immunization-origin#provider "Other Provider"
* informationSource.reference = Reference(example-practitioner)

* location = Reference(example-location-1)

* site = $v3-ActSite#LA "Left arm"
* route = $sct#36673005 "Intradermal injection"

* doseQuantity.value = 0.05
* doseQuantity.unit = "mL"
* doseQuantity.system = "http://unitsofmeasure.org"
* doseQuantity.code = #mL

* performer[0].function = $v2-0443#AP "Administering Provider"
* performer[0].actor = Reference(example-practitioner)

* reason[0].reference = Reference(condition-tuberculosis-risk-example)

* isSubpotent = false

* programEligibility[0].program = $loinc#64994-7 "Vaccine funding program eligibility category"
* programEligibility[0].programStatus = $immunization-program-eligibility#uninsured "Uninsured"

* fundingSource = $immunization-funding-source#private "Private"

* reaction[0].date = "2026-04-28T12:00:00+05:00"
* reaction[0].manifestation.concept = $sct#260389003 "No reaction"
* reaction[0].reported = false

* protocolApplied[0].series = "BCG vaccination"
* protocolApplied[0].authority = Reference(example-immunization-organization)
* protocolApplied[0].targetDisease = $sct#56717001 "Tuberculosis"
* protocolApplied[0].doseNumber = "1"
* protocolApplied[0].seriesDoses = "1"

* note[0].text = "Patient tolerated vaccination well."





Instance: medication-imm-001
InstanceOf: Medication
Usage: #example
Title: "Medication - BCG Vaccine"
Description: "Example Medication resource representing a Bacillus Calmette-Guerin vaccine."
* language = #en
* code = $cvx#19 "Bacillus Calmette-Guerin vaccine"



Instance: observation-reaction-example
InstanceOf: UZCoreObservation
Usage: #example
Title: "Observation - Post-immunization reaction"
Description: "Example Observation capturing a post-immunization reaction for a patient."

* language = #en

* status = #final
* code = $loinc#75325-1 "Symptom"
* subject = Reference(example-salim)
* effectiveDateTime = "2026-04-28T12:00:00+05:00"
* performer = Reference(example-practitioner)
* valueCodeableConcept = $sct#386661006 "Fever"



Instance: immunization-recommendation-example
InstanceOf: ImmunizationRecommendation
Usage: #example
Title: "Immunization Recommendation - BCG"
Description: "Example ImmunizationRecommendation resource indicating a due BCG vaccine for a patient."

* language = #en

* patient = Reference(example-salim)
* date = "2026-04-27"
* recommendation[0].vaccineCode = $sct#836402002 "Bacillus Calmette-Guerin antigen-containing vaccine product"
* recommendation[0].forecastStatus = $sct#171279008 "Immunization due"

Instance: condition-tuberculosis-risk-example
InstanceOf: UZCoreCondition
Usage: #example
Title: "Condition - Tuberculosis vaccination indication"
Description: "Example condition representing indication for BCG vaccination."

* language = #en

* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $sct#56717001 "Tuberculosis"
* subject = Reference(example-salim)

Instance: example-immunization-organization
InstanceOf: UZCoreOrganization
Title: "Example of Immunization Organization"
Description: "Example of a national immunization organization"
Usage: #example

* language = #en

* active = true

* type.coding[organizationalStructure] =
    organizational-structure-cs#110 "Specialized scientific and practical medical center"

* type.coding[specialization] =
    organizational-specialization-cs#153.0 "Tuberculosis in adults"

* name = "Republican Tuberculosis and Pulmonology Center"

