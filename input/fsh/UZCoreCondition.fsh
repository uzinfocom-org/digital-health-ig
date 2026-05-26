Profile: UZCoreCondition
Parent: Condition
Id: uz-core-condition
Title: "UZ Core Condition"
Description: "Uzbekistan Core Condition profile, used for documenting a patient's symptoms, conditions, and their characteristics"
* ^url = $general-condition
* ^experimental = true
* ^status = #active
* clinicalStatus MS
* clinicalStatus from ClinicalStatusVS
* verificationStatus MS
* verificationStatus from ConditionVerificationStatusVS
* severity MS
* severity from ConditionSeverityVS (preferred)
  * ^binding.additional[+].purpose = #required
  * ^binding.additional[=].valueSet = Canonical(DisabilityVS)
  * ^binding.additional[=].usage.code = $general-condition#Condition.code
  * ^binding.additional[=].usage.valueCodeableConcept = $sct#21134002 "Disability"
* code MS
* code from ConditionCodeVS (preferred)
* extension contains DiagnosisType named diagnosisType 0..1 MS
* bodySite MS
* bodySite from $bodysite (example)
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

Instance: example-cancer
InstanceOf: UZCoreCondition
Title: "Example Uz Core Condition - Cancer"
Description: "Example instance of a cancer diagnosis documented during a patient encounter"
Usage: #example
* language = #en
* clinicalStatus = $condition-clinical#active "Active"
* verificationStatus = $condition-ver-status#confirmed "Confirmed"
* code = $sct#254837009 "Malignant neoplasm of breast"
* extension[diagnosisType].valueCodeableConcept = diagnosis-type-cs#gencl-0001-00003 "Main diagnosis"
* bodySite = $sct#76752008 "Breast structure"
* subject = Reference(example-emma)
* onsetDateTime = "2025-08-15"
* recordedDate = "2025-09-01"
* participant
  * actor = Reference(example-practitioner)
  * function = $provenance-participant-type#author "Author"
* note
  * text = "Patient diagnosed with breast cancer. Staging and treatment plan to be determined."

Instance: example-disability
 InstanceOf: UZCoreCondition
Title: "Example Uz Core Condition - Disability Group I"
Description: "Example instance of a disability condition with Group I classification"
Usage: #example
* language = #uz
* clinicalStatus = $condition-clinical#active "Faol"
* verificationStatus = $condition-ver-status#confirmed "Tasdiqlangan"
* code = $sct#21134002 "Disability"
* severity = DisabilityCS#regis0011.00001 "I guruh"
* subject = Reference(example-salim)
* onsetDateTime = "2020-03-10"
* recordedDate = "2025-09-17"
* participant
  * actor = Reference(example-practitioner)
  * function = $provenance-participant-type#author "Muallif"
* note
  * text = "Patient has been classified with Group I disability status following medical evaluation."

Instance: example-headache
InstanceOf: UZCoreCondition
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
InstanceOf: UZCoreCondition
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
