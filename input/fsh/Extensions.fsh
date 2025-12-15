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
