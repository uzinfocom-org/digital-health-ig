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
* subject only Reference(UZCorePatient or Group or Practitioner or RelatedPerson or ResearchSubject)

* encounter MS
* encounter only Reference(UZCoreEncounter)

* occurrence[x] MS
* occurrence[x] only dateTime or Period or Timing

* detected MS
* recordedDate MS

* resultingEffect MS
* resultingEffect only Reference(Condition or Observation)

* location MS
* location only Reference(UZCoreLocation)

* seriousness MS
* seriousness from AdverseEventSeriousnessVS (example)

* outcome MS
* outcome from AdverseEventOutcomeVS (example)

* recorder MS
* recorder only Reference(UZCorePatient or Practitioner or PractitionerRole or RelatedPerson or ResearchSubject)

* participant MS

* participant.function MS
* participant.function from http://hl7.org/fhir/ValueSet/adverse-event-participant-function (example)

* participant.actor MS
* participant.actor only Reference(UZCorePatient or Practitioner or PractitionerRole or RelatedPerson or ResearchSubject)


* suspectEntity MS
* suspectEntity.instance[x] MS
* suspectEntity.instance[x] only Reference(Immunization or Procedure or Substance or Medication or MedicationAdministration or MedicationStatement or Device or BiologicallyDerivedProduct or ResearchStudy)

* note MS




// The first instance for Adverse Event Profile
Instance: adverse-event-example-01
InstanceOf: UZCoreAdverseEvent
Title: "Example Adverse Event"
Description: "Example instance of an adverse event with minimal and optional elements filled"

* status = $event-status#in-progress "In Progress"
* actuality = $adverse-event-actuality#potential "Potential Adverse Event"
* subject = Reference(example-salim)
* encounter = Reference(example-encounter)

* occurrenceDateTime = "2026-04-30T10:30:00+05:00"
* detected = "2026-04-30T11:00:00+05:00"
* recordedDate = "2026-04-30T11:15:00+05:00"

* resultingEffect[0] = Reference(example-headache)
* resultingEffect[1] = Reference(head-circumference-example)

* location = Reference(example-location-1)

* seriousness = $adverse-event-seriousness#serious "Serious"
* outcome[0] = $sct#405532008 "Adverse incident resulting in potentially permanent disabling damage"

* recorder = Reference(example-practitioner)

* participant[0].function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#AUT "author (originator)"
* participant[0].actor = Reference(example-practitioner)

* suspectEntity[0].instanceReference = Reference(medication-02)

* note[0].text = "Patient developed mild rash after medication administration. No long-term effects observed."




// The second instance for Adverse Event Profile
Instance: adverse-event-example-02
InstanceOf: UZCoreAdverseEvent
Title: "Example Adverse Event"
Description: "Example instance of an adverse event with minimal and optional elements filled"

* status = $event-status#completed "Completed"
* actuality = $adverse-event-actuality#actual "Adverse Event"
* subject = Reference(example-david)
* encounter = Reference(example-encounter)

* occurrenceDateTime = "2026-04-30T10:30:00+05:00"
* detected = "2026-04-30T11:00:00+05:00"
* recordedDate = "2026-04-30T11:15:00+05:00"

* resultingEffect[0] = Reference(head-circumference-example)

* location = Reference(example-location)

* seriousness = $adverse-event-seriousness#non-serious "Non-serious"
* outcome[0] = $sct#405535005 "Adverse incident resulting in death"

* recorder = Reference(example-practitioner)

* participant[0].function = http://terminology.hl7.org/CodeSystem/v3-ParticipationType#AUT "author (originator)"
* participant[0].actor = Reference(example-practitioner)

* suspectEntity[0].instanceReference = Reference(medication-03)

* note[0].text = "Patient developed severe reaction after medication administration resulting in death."




// Medication examples for suspectEntity[0].instanceReference references
Instance: medication-02
InstanceOf: Medication
Title: "Example Medication"
Description: "Example medication suspected as the cause of the adverse event"
Usage: #example

* code = $sct#373994007 "Prednisone 5 mg oral tablet"
* status = #active


Instance: medication-03
InstanceOf: Medication
Title: "Amoxicillin 500 mg capsule"
Description: "Example medication suspected as the cause of the adverse event"
Usage: #example

* code = $sct#27658006 "Amoxicillin-containing product"
* status = #active