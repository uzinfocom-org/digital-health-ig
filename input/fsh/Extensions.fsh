Extension: GenderOtherUZ
Id: gender-other
Title: "Differentiation of the administrative gender 'other'"
Description: "Extension for more precise differentiation of the administrative gender 'other', aligned with German base profiles representation of the same concept."
Context: Patient.gender, RelatedPerson.gender, Person.gender, Practitioner.gender, Patient.contact.gender
* ^url = "https://dhp.uz/fhir/core/StructureDefinition/gender-other"
* ^experimental = true
* ^date = "2025-03-12"
* value[x] 1..
* value[x] only Coding
* value[x] from gender-other-vs (required)
  * obeys uzcore-gender-other-1
 
Extension: DiagnosisType
Id: diagnosis-type
Title: "Diagnosis type"
Description: "Extension to differentiate the diagnosis type, which is different from the condition type / category"
* ^context.type = #element
* ^context.expression = "Condition"
* ^experimental = true
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from DiagnosisTypeVS (required)


Invariant: uzcore-gender-other-1
Description: "The differentiation of the gender indication 'other' may only be filled if the gender 'other' is specified (for use in an extension)"
* severity = #error
* expression = "%resource.where(gender='other').exists()"

Invariant: uzcore-gender-other-2
Description: "gender 'other' implies differentiation of the gender indication 'other' (for use in a profile)"
* severity = #error
* expression = "gender.exists() and gender = 'other' implies gender.extension('https://dhp.uz/fhir/core/StructureDefinition/gender-other').exists()"

Extension: CoverageArea
Id: coverage-area
Title: "Coverage area"
Description: "Administrative territory that this organization provides services to. Use the [SSVAdministrativeTerritoryToRegionsCM](ConceptMap-ssv-administrative-territory-to-regions-cm.html) ConceptMap to translate SSV territory codes to the required StateCS codes."
Context: Organization
* ^experimental = true
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from StateVS (required)

Extension: ManagingOrganizationAttachment
Id: managing-organization-attachment
Title: "Managing organization attachment date"
Description: "Date when the patient was attached to the managing organization. In Uzbekistan, patients can only change their managing organization once a year."
Context: Patient
* ^context.type = #element
* ^context.expression = "Patient"
* ^experimental = true
* value[x] 1..
* value[x] only date


Extension: PatientNationality
Id: patient-nationality
Title: "Patient nationality"
Description: "The nationality of the patient."
Context: Patient
* ^url = "https://dhp.uz/fhir/core/StructureDefinition/patient-nationality"
* ^experimental = true

* extension contains
    code 1..1 MS

* extension[code].value[x] 1..1 MS
* extension[code].value[x] only CodeableConcept
* extension[code].valueCodeableConcept from NationalityVS (required)



// Turnaround Time for HealthcareService Profile
Invariant: uzcore-turnaround-time-1
Description: "Turnaround time must be expressed in hours, days, or weeks"
Severity: #error
Expression: "code.exists() and (code = 'h' or code = 'd' or code = 'wk')"

Extension: TurnaroundTime
Id: turnaround-time
Title: "Turnaround Time"
Description: "Expected turnaround time for the healthcare service"
Context: HealthcareService

* value[x] only Duration
// Laboratory TAT is typically measured in hours, days, or weeks; months are excluded due to variable month lengths.
* valueDuration obeys uzcore-turnaround-time-1

