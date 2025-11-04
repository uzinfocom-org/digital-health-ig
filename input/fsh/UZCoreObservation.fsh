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


// Vital Signs Examples

Instance: blood-pressure-example
InstanceOf: Observation
Usage: #example
Description: "Example of a blood pressure vital sign observation with systolic and diastolic components"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bp"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#85354-9 "Blood pressure panel with all children optional"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "2025-11-04T10:30:00Z"
* performer = Reference(Practitioner/example-practitioner)
* component[0].code = $loinc#8480-6 "Systolic blood pressure"
* component[=].valueQuantity = 120 'mm[Hg]' "mmHg"
* component[+].code = $loinc#8462-4 "Diastolic blood pressure"
* component[=].valueQuantity = 80 'mm[Hg]' "mmHg"

Instance: bmi-example
InstanceOf: Observation
Usage: #example
Description: "Example of a body mass index (BMI) vital sign observation"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bmi"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#39156-5 "Body mass index (BMI) [Ratio]"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "1999-07-02"
* performer = Reference(Practitioner/example-practitioner)
* valueQuantity = 16.2 'kg/m2' "kg/m2"

Instance: body-height-example
InstanceOf: Observation
Usage: #example
Description: "Example of a body height vital sign observation"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bodyheight"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8302-2 "Body height"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "1999-07-02"
* performer = Reference(Practitioner/example-practitioner)
* valueQuantity = 66.9 '[in_i]' "inches"

Instance: body-temperature-example
InstanceOf: Observation
Usage: #example
Description: "Example of a body temperature vital sign observation"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bodytemp"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8310-5 "Body temperature"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "1999-07-02"
* performer = Reference(Practitioner/example-practitioner)
* valueQuantity = 36.5 'Cel' "C"

Instance: body-weight-example
InstanceOf: Observation
Usage: #example
Description: "Example of a body weight vital sign observation"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/bodyweight"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#29463-7 "Body Weight"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "2016-03-28"
* performer = Reference(Practitioner/example-practitioner)
* valueQuantity = 185 '[lb_av]' "lbs"

Instance: head-circumference-example
InstanceOf: Observation
Usage: #example
Description: "Example of a head circumference vital sign observation"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/headcircum"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#9843-4 "Head Occipital-frontal circumference"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "1999-07-02"
* performer = Reference(Practitioner/example-practitioner)
* valueQuantity = 51.2 'cm' "cm"

Instance: heart-rate-example
InstanceOf: Observation
Usage: #example
Description: "Example of a heart rate vital sign observation"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/heartrate"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#8867-4 "Heart rate"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "1999-07-02"
* performer = Reference(Practitioner/example-practitioner)
* valueQuantity = 44 '/min' "beats/minute"

Instance: oxygen-saturation-example
InstanceOf: Observation
Usage: #example
Description: "Example of an oxygen saturation vital sign observation with interpretation and reference range"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/oxygensat"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#2708-6 "Oxygen saturation in Arterial blood"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "2014-12-05T09:30:10+01:00"
* performer = Reference(Practitioner/example-practitioner)
* valueQuantity = 95 '%' "%"
* interpretation = $v3-ObservationInterpretation#N "Normal"
* interpretation.text = "Normal (applies to non-numeric results)"
* referenceRange.low = 90 '%' "%"
* referenceRange.high = 99 '%' "%"

Instance: respiratory-rate-example
InstanceOf: Observation
Usage: #example
Description: "Example of a respiratory rate vital sign observation"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/vitalsigns"
* meta.profile[+] = "http://hl7.org/fhir/StructureDefinition/resprate"
* status = #final
* category = $observation-category#vital-signs "Vital Signs"
* code = $loinc#9279-1 "Respiratory rate"
* subject = Reference(Patient/example-salim)
* effectiveDateTime = "1999-07-02"
* performer = Reference(Practitioner/example-practitioner)
* valueQuantity = 26 '/min' "breaths/minute"
