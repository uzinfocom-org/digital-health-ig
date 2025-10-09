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

Instance: example-uzcoreobservation-blood-pressure
InstanceOf: UZCoreObservation
Title: "Example Uz Core Observation - Blood Pressure"
Description: "Example instance of a blood pressure measurement for a patient"
Usage: #example

* status = #preliminary
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(example-patient)
* encounter = Reference(example-encounter)
* effectiveDateTime = "2025-08-01T10:00:00Z"
* issued = "2025-08-01T10:01:00Z"
* performer = Reference(example-practitioner)
//* device = Reference(example-device)
//* specimen = Reference(example-specimen)
* valueString = "Blood pressure within normal  limits"
* interpretation = $observation-interpretation#N "Normal"
* note.text = "Patient was calm and seated for 5 minutes before measurement."
//* dataAbsentReason = $observation-dataAbsentReason#not-applicable "Not Applicable"

* referenceRange
  * low.value = 90
  * low.unit = "mmHg"
  * high.value = 120
  * high.unit = "mmHg"
  * type = $reference-meaning#normal "Normal Range"
  * text = "Normal systolic blood pressure for adults"

* component[+].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity.value = 117
* component[=].valueQuantity.unit = "mmHg"
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #mm[Hg]
* component[=].interpretation = $observation-interpretation#N "Normal"

* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity.value = 78
* component[=].valueQuantity.unit = "mmHg"
* component[=].valueQuantity.system = "http://unitsofmeasure.org"
* component[=].valueQuantity.code = #mm[Hg]
* component[=].interpretation = $observation-interpretation#N "Normal"
