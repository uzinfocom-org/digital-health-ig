Profile: UZCoreObservation
Parent: Observation
Id: uz-core-observation
Title: "UZ Core Observation"
Description: "Uzbekistan Core Observation profile, used to represent clinical and laboratory observations using SNOMED CT, LOINC, or local codes"
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
* partOf only Reference(MedicationAdministration or MedicationDispense or UZCoreProcedure or UZCoreImmunization or ImagingStudy)
* status MS
* status from ObservationStatusVS (required)
* category MS
* category from ObservationCategoryVS
* code MS
* code from ObservationCodesVS (preferred)
* subject MS
* subject only Reference(UZCorePatient or UZCoreLocation or UZCoreOrganization or UZCoreProcedure or UZCorePractitioner or Medication)
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
* method from LabMethodsVS
* specimen MS
* specimen only Reference(UZCoreSpecimen)
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
* hasMember only Reference(UZCoreObservation or UZCoreQuestionnaireResponse)
* derivedFrom MS
* derivedFrom only Reference(DocumentReference or ImagingStudy or UZCoreQuestionnaireResponse or UZCoreObservation)
* component MS
* component.code MS
* component.code from ObservationCodesVS (preferred)
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
Description: "Example of a body height vital sign  observation"
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

// CBC - panel with components
Instance: cbc-panel-example
InstanceOf: UZCoreObservation
Usage: #example
Description: "Example of CBC (Umumiy qon tahlili) as a laboratory panel with analytes coded in LOINC"
* meta.profile[0] = "https://dhp.uz/fhir/core/StructureDefinition/uz-core-observation"
* status = #final
* category = $observation-category#laboratory "Laboratory"
* code = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-encounter)
* effectiveDateTime = "2025-11-04T08:10:00Z"
* issued = "2025-11-04T09:00:00Z"
* performer = Reference(Practitioner/example-practitioner)
* specimen = Reference(Specimen/example-specimen-blood-cbc)
* component[0].code = $loinc#718-7 "Hemoglobin [Mass/volume] in Blood"
* component[=].valueQuantity = 145 'g/L' "g/L"
* component[+].code = $loinc#789-8 "Erythrocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 4.7 '10*12/L' "10^12/L"
* component[+].code = $loinc#787-2 "MCV [Entitic mean volume] in Red Blood Cells by Automated count"
* component[=].valueQuantity = 91 'fL' "fL"
* component[+].code = $loinc#785-6 "MCH [Entitic mass] by Automated count"
* component[=].valueQuantity = 30.9 'pg' "pg"
* component[+].code = $loinc#786-4 "MCHC [Entitic Mass/volume] in Red Blood Cells by Automated count"
* component[=].valueQuantity = 338 'g/L' "g/L"
* component[+].code = $loinc#788-0 "Erythrocyte [DistWidth] in Blood by Automated count"
* component[=].valueQuantity = 13.1 '%' "%"
* component[+].code = $loinc#4544-3 "Hematocrit [Volume Fraction] of Blood by Automated count"
* component[=].valueQuantity = 43 '%' "%"
* component[+].code = $loinc#777-3 "Platelets [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 250 '10*9/L' "10^9/L"
* component[+].code = $loinc#32623-1 "Platelet [Entitic mean volume] in Blood by Automated count"
* component[=].valueQuantity = 9.8 'fL' "fL"
* component[+].code = $loinc#32207-3 "Platelet distribution width [Entitic volume] in Blood by Automated count"
* component[=].valueQuantity = 12.1 'fL' "fL"
* component[+].code = $loinc#51637-7 "Plateletcrit [Volume Fraction] in Blood"
* component[=].valueQuantity = 0.24 '%' "%"
* component[+].code = $loinc#6690-2 "Leukocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 6.2 '10*9/L' "10^9/L"
* component[+].code = $loinc#30446-9 "Myelocytes [#/volume] in Blood"
* component[=].valueQuantity = 0 '10*9/L' "10^9/L"
* component[+].code = $loinc#28541-1 "Metamyelocytes/Leukocytes in Blood"
* component[=].valueQuantity = 0 '%' "%"
* component[+].code = $loinc#764-1 "Band form neutrophils/Leukocytes in Blood by Manual count"
* component[=].valueQuantity = 3 '%' "%"
* component[+].code = $loinc#751-8 "Neutrophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 3.7 '10*9/L' "10^9/L"
* component[+].code = $loinc#711-2 "Eosinophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 0.1 '10*9/L' "10^9/L"
* component[+].code = $loinc#704-7 "Basophils [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 0.0 '10*9/L' "10^9/L"
* component[+].code = $loinc#5905-5 "Monocytes/Leukocytes in Blood by Automated count"
* component[=].valueQuantity = 6 '%' "%"
* component[+].code = $loinc#731-0 "Lymphocytes [#/volume] in Blood by Automated count"
* component[=].valueQuantity = 2.0 '10*9/L' "10^9/L"
* component[+].code = $loinc#93362-2 "Plasma cells monotypic population [Identifier] in Bone marrow by Flow cytometry (FC)"
* component[=].valueString = "not detected"
* component[+].code = $loinc#4537-7 "Erythrocyte [Sedimentation Rate] in Blood by Westergren method"
* component[=].valueQuantity = 8 'mm/h' "mm/h"
* component[+].code = $loinc#51640-1 "Platelet anisocytosis [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $loinc#779-9 "Poikilocytosis [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $loinc#703-9 "Basophilic stippling [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $loinc#10378-8 "Polychromasia [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $loinc#7793-3 "Howell-Jolly bodies [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $loinc#11280-5 "Cabot rings [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $loinc#52127-8 "Megaloblasts/cells in Bone marrow"
* component[=].valueString = "not detected"
* component[+].code = $loinc#765-8 "Neutrophils.hypersegmented [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
* component[+].code = $loinc#803-7 "Toxic granules [Presence] in Blood by Light microscopy"
* component[=].valueString = "not detected"
