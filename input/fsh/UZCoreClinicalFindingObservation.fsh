Profile: UZCoreClinicalFindingObservation
Parent: Observation
Id: uz-core-clinical-finding-observation
Title: "UZ Core Clinical Finding Observation"
Description: "Uzbekistan Core Clinical Finding Observation profile, used to represent clinician-assessed findings, functional status, and qualitative clinical observations where LOINC does not provide appropriate codes. Observation.code is bound to a curated SNOMED CT subset."
* ^experimental = true
* ^status = #active
//rules
* identifier MS
* instantiates[x] MS
* basedOn 0..1 MS
* basedOn only Reference(CarePlan or MedicationRequest or ServiceRequest)
* triggeredBy MS
* triggeredBy.observation only Reference(UZCoreLaboratoryObservation or UZCoreClinicalFindingObservation)
* triggeredBy.type from TriggeredByTypeVS (required)
* triggeredBy.reason MS
* partOf MS
* partOf only Reference(MedicationAdministration or MedicationDispense or Procedure or Immunization or ImagingStudy)
* status MS
* status from ObservationStatusVS (required)
* category MS
* category from ObservationCategoryVS
* code MS
* code from ClinicalFindingObservationCodeVS (required)
* subject MS
* subject only Reference(UZCorePatient or UZCoreLocation or UZCoreOrganization or Procedure or UZCorePractitioner or Medication)
* focus MS
* encounter MS
* encounter only Reference(UZCoreEncounter)
* effective[x] MS
* issued MS
* performer MS
* performer only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* value[x] MS
* dataAbsentReason MS
* dataAbsentReason from DataAbsentReasonVS (extensible)
* interpretation from ObservationInterpretationVS
* note MS
* bodySite from $bodysite
* method from $observation-methods
* specimen MS
* specimen only Reference(Specimen)
* device MS
* device only Reference(Device or DeviceMetric)
* referenceRange MS
* referenceRange.low MS
* referenceRange.high MS
* referenceRange.normalValue MS
* referenceRange.normalValue from ObservationNormalValueVS (extensible)
* referenceRange.type from ReferenceRangeMeaningVS (preferred)
* referenceRange.age MS
* referenceRange.text MS
* hasMember MS
* hasMember only Reference(UZCoreLaboratoryObservation or UZCoreClinicalFindingObservation or QuestionnaireResponse)
* derivedFrom MS
* derivedFrom only Reference(DocumentReference or ImagingStudy or QuestionnaireResponse or UZCoreLaboratoryObservation or UZCoreClinicalFindingObservation)
* component MS
* component.code MS
* component.code from ClinicalFindingObservationCodeVS
* component.value[x] MS
* component.dataAbsentReason from DataAbsentReasonVS (extensible)
* component.interpretation from ObservationInterpretationVS (extensible)


Instance: muscle-strength-example
InstanceOf: UZCoreClinicalFindingObservation
Usage: #example
Description: "Example of a clinical finding observation for muscle strength assessment using SNOMED CT"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-clinical-finding-observation"
* status = #final
* category = $observation-category#exam "Exam"
* code = $sct#366725004 "Finding of muscle strength"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "2025-11-04T10:30:00Z"
* performer = Reference(Practitioner/example-practitioner)
* valueCodeableConcept = $sct#299042006 "Muscle power grade 5 - normal"
