Profile: UZCoreAdverseEvent
Parent: AdverseEvent
Id: uz-core-adverse-event
Title: "UZ Core AdverseEvent"
Description: "Uzbekistan Core AdverseEvent profile, used to represent an adverse event that may be associated with unintended consequences for a patient or research participant."
* ^status = #active
* ^experimental = true
* ^date = "2025-08-01"
* ^publisher = "Uzinfocom"

* identifier MS
* status MS
* status from AdverseEventStatusVS (required)
* actuality MS
* actuality from AdverseEventActualityVS (required)

* subject MS
* subject only Reference(UZCorePatient or Group or UZCorePractitioner or UZCoreRelatedPerson or ResearchSubject)

* encounter MS
* encounter only Reference(UZCoreEncounter)

* occurrence[x] MS
* occurrence[x] only dateTime or Period or Timing

* detected MS
* recordedDate MS

* resultingEffect MS
* resultingEffect only Reference(UZCoreCondition or UZCoreObservation)

* location MS
* location only Reference(UZCoreLocation)

* seriousness MS
* seriousness from AdverseEventSeriousnessVS (example)

* outcome MS
* outcome from AdverseEventOutcomeVS (example)

* recorder MS
* recorder only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreRelatedPerson or ResearchSubject)

* participant MS

* participant.function MS
* participant.function from http://hl7.org/fhir/ValueSet/adverse-event-participant-function (example)

* participant.actor MS
* participant.actor only Reference(UZCorePatient or UZCorePractitioner or UZCorePractitionerRole or UZCoreRelatedPerson or ResearchSubject)


* suspectEntity MS
* suspectEntity.instance[x] MS
* suspectEntity.instance[x] only Reference(UZCoreImmunization or UZCoreProcedure or Substance or Medication or MedicationAdministration or MedicationStatement or Device or BiologicallyDerivedProduct or ResearchStudy)

* note MS




// First example: a near-miss (potential) adverse event intercepted before any harm reached the patient
Instance: example-averted-medication-error
InstanceOf: UZCoreAdverseEvent
Title: "Example Adverse Event - Averted Medication Error"
Description: "A potential adverse event (near miss): a contraindicated prednisone order was intercepted before administration, so no dose reached the patient and no harm occurred"
Usage: #example

* status = $event-status#in-progress "In Progress"
* actuality = $adverse-event-actuality#potential "Potential Adverse Event"
* subject = Reference(example-salim)
* encounter = Reference(example-encounter)

* occurrenceDateTime = "2026-04-30T10:30:00+05:00"
* detected = "2026-04-30T10:35:00+05:00"
* recordedDate = "2026-04-30T11:15:00+05:00"

* location = Reference(example-location-1)

* seriousness = $adverse-event-seriousness#serious "Serious"

* recorder = Reference(example-practitioner)

* participant[0].function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#AUT "author (originator)"
* participant[0].actor = Reference(example-practitioner)

* suspectEntity[0].instanceReference = Reference(example-prednisone)

* note[0].text = "Prednisone was ordered despite a documented contraindication. The order was flagged by clinical decision support and intercepted by the pharmacist before administration, so no dose reached the patient. Investigation in progress."




// Second example: a serious actual adverse event resulting in death
Instance: example-fatal-anaphylaxis
InstanceOf: UZCoreAdverseEvent
Title: "Example Adverse Event - Fatal Anaphylaxis"
Description: "A serious actual adverse event: the patient developed anaphylaxis following amoxicillin administration and died despite resuscitation"
Usage: #example

* status = $event-status#completed "Completed"
* actuality = $adverse-event-actuality#actual "Adverse Event"
* subject = Reference(example-david)
* encounter = Reference(example-encounter)

* occurrenceDateTime = "2026-04-30T10:30:00+05:00"
* detected = "2026-04-30T10:45:00+05:00"
* recordedDate = "2026-04-30T11:15:00+05:00"

* resultingEffect[0] = Reference(example-anaphylaxis)

* location = Reference(example-location)

* seriousness = $adverse-event-seriousness#serious "Serious"
* outcome[0] = $sct#405535005 "Adverse incident resulting in death"

* recorder = Reference(example-practitioner)

* participant[0].function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#AUT "author (originator)"
* participant[0].actor = Reference(example-practitioner)

* suspectEntity[0].instanceReference = Reference(example-amoxicillin)

* note[0].text = "Patient developed anaphylaxis shortly after amoxicillin administration and died despite resuscitation efforts."




// Medication examples for suspectEntity[0].instanceReference references
Instance: example-prednisone
InstanceOf: Medication
Title: "Example Medication"
Description: "Example medication suspected as the cause of the adverse event"
Usage: #example

* code = $medical-product-classification#H02AB07 "prednisone"
* status = #active


Instance: example-amoxicillin
InstanceOf: Medication
Title: "Amoxicillin 500 mg capsule"
Description: "Example medication suspected as the cause of the adverse event"
Usage: #example

* code = $medical-product-classification#J01CA04 "amoxicillin"
* status = #active


// Resulting effect Condition referenced by example-fatal-anaphylaxis
Instance: example-anaphylaxis
InstanceOf: UZCoreCondition
Title: "Example UZ Core Condition - Anaphylaxis"
Description: "Anaphylactic reaction following amoxicillin administration, recorded as the resulting effect of an adverse event"
Usage: #example

* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* severity = $sct#24484000 "Severe"
* code = $sct#39579001 "Anaphylaxis"
* subject = Reference(example-david)
* onsetDateTime = "2026-04-30T10:40:00+05:00"
* recordedDate = "2026-04-30T11:00:00+05:00"