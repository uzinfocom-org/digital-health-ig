Profile: UZCoreClinicalCondition
Parent: Condition
Id: uz-core-clinical-condition 
Title: "UZ Core Clinical Condition"
Description: "Uzbekistan Core Clinical Condition profile, used for documenting a patient's clinical symptoms, conditions, and their characteristics"
* ^experimental = true
* ^status = #active
* clinicalStatus MS
* clinicalStatus from ClinicalStatusVS (required)
* verificationStatus MS
* verificationStatus from ConditionVerificationStatusVS (required)
* severity MS
* severity from ConditionSeverityVS (required)
* code MS
* code from $icd-10-vs (required)
* extension contains DiagnosisType named diagnosisType 0..1 MS
* bodySite MS
* bodySite from $bodysite (required)
* subject MS
* subject only Reference(UZCorePatient)
* encounter MS
* encounter only Reference(UZCoreEncounter)
* onset[x] MS
* abatement[x] MS
* recordedDate MS

* participant  0..1 MS
* participant.actor  only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCorePatient or UZCoreRelatedPerson or Device)
* participant.function MS
* participant.function from ConditionParticipationRoleTypeVS (extensible) 

* note MS

Instance: example-headache
InstanceOf: UZCoreClinicalCondition
Title: "Example Uz Core Condition - Headache"
Description: "Example instance of a headache condition documented during a patient encounter"
Usage: #example
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* severity = $sct#255604002 "Mild" 
* code = $icd-10#R51 "Headache"
* extension[diagnosisType].valueCodeableConcept = diagnosis-type-cs#gencl-0001-00001 "Diagnosis of the referring institution"
* bodySite = $sct#67169006 "Head of first metatarsal bone"
* subject = Reference(example-patient)
* onsetDateTime = "2025-07-25"
* recordedDate = "2025-07-29"
* participant
  * actor = Reference(example-practitioner)
  * function = $provenance-participant-type#author "Author"
* note
  * text = "Patient complained of mild headache for two days. Condition resolved after rest and hydration."

Instance: example-pregnancy
InstanceOf: UZCoreClinicalCondition
Title: "Example Uz Core Condition - Pregnancy"
Description: "Example instance of a pregnancy condition documented during a patient encounter"
Usage: #example
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $icd-10#Z34.0
* extension[diagnosisType].valueCodeableConcept = diagnosis-type-cs#gencl-0001-00005 "Diagnosis of complications of the underlying disease"
* bodySite = $sct#76752008 "Breast structure"
* subject = Reference(example-emma)
* onsetDateTime = "2025-08-15"
* recordedDate = "2025-09-01"
* participant
  * actor = Reference(example-practitioner)
  * function = $provenance-participant-type#author "Author"
* note
  * text = "Patient is in the first trimester of pregnancy. No complications observed at this stage."
