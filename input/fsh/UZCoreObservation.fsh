Profile: UZCoreObservation
Parent: Observation
Id: uz-core-observation
Title: "Uz Core Observation"
Description: "Uzbekistan Core Observation profile, used to represent clinical and laboratory observations"
* ^experimental = true
* ^status = #active
//rules
* identifier MS
* instantiates[x] MS
* basedOn 0..1 MS
* basedOn only Reference(CarePlan or MedicationRequest or ServiceRequest)
* triggeredBy MS
* triggeredBy.observation only Reference(UZCoreObservation)
* triggeredBy.type from TriggeredByTypeVS (required)
* triggeredBy.reason MS
* partOf MS
* partOf only Reference(MedicationAdministration or MedicationDispense or Procedure or Immunization or ImagingStudy)
* status MS
* status from ObservationStatusVS (required)
* category MS
* category from ObservationCategoryVS
* code MS
* code from $observation-codes
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
* hasMember only Reference(UZCoreObservation or QuestionnaireResponse)
* derivedFrom MS
* derivedFrom only Reference(DocumentReference or ImagingStudy or QuestionnaireResponse or UZCoreObservation)
* component MS
* component.code MS
* component.code from $observation-codes
* component.value[x] MS
* component.dataAbsentReason from DataAbsentReasonVS (extensible)
* component.interpretation from ObservationInterpretationVS (extensible)
