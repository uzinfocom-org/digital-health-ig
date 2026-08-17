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


Extension: PaymentType
Id: payment-type
Title: "Payment Type"
Description: "Extension indicating the type of payment or financing model used for a requested laboratory service. It may be used when a laboratory test is ordered directly by a laboratory medical registrar without a prior physician referral, for example when the patient receives the laboratory service as a paid service. The extension can be used to distinguish paid laboratory services from services covered by state programs, insurance, or other financing mechanisms."
Context: ServiceRequest

* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept from PaymentTypeVS (required)

Extension: RecommendationAuthor
Id: recommendation-author
Title: "Recommendation Author"
Description: "Extension to indicate the author of the immunization recommendation"

* ^context.type = #element
* ^context.expression = "ImmunizationRecommendation"
* ^experimental = true

* value[x] 1..
* value[x] only Reference(UZCorePractitioner or UZCorePractitionerRole)


Extension: ClaimResponseCancellationReason
Id: claim-response-cancellation-reason
Title: "ClaimResponse Cancellation Reason"
Description: "Extension used to record the reason for cancellation of a ClaimResponse, particularly when a preauthorization expires before the claim process is completed."
Context: ClaimResponse

* ^url = "https://dhp.uz/fhir/core/StructureDefinition/claim-response-cancellation-reason"
* ^experimental = true
* ^date = "2026-06-24"

* value[x] 1..
* value[x] only CodeableConcept
* value[x] from CancellationReasonVS (required)
  * obeys uzcore-clmresp-cancellation-reason-1

Invariant: uzcore-clmresp-cancellation-reason-1
Description: "A cancellation reason code shall be provided."
Expression: "exists()"
Severity: #error
Extension: ServiceDefinition
Id: service-definition
Title: "Service Definition"
Description: "Canonical reference to the laboratory ObservationDefinition that specifies the service offered by this HealthcareService. Many per-organization HealthcareService offerings can point to one global ObservationDefinition catalogue entry."

* ^context.type = #element
* ^context.expression = "HealthcareService"
* ^experimental = true

* value[x] 1..1
* value[x] only Canonical(UZCoreLaboratoryObservationDefinition)

Extension: CoverageKind
Id: coverage-kind
Title: "Coverage Kind"
Description: "Extension indicating the kind of financing or coverage source for a requested service, such as state insurance, private insurance, self-pay, or other."
Context: ServiceRequest

* ^experimental = true

* value[x] only CodeableConcept
* valueCodeableConcept from CoverageKindVS (required)


Extension: PlanDefinitionStatusHistory 
Id: plan-definition-status-history 
Title: "PlanDefinition Status History" 
Description: "Records the history of status changes for a PlanDefinition, including the status, period during which the status was effective, reason for the status change, and the actor who performed the change."
Context: PlanDefinition

* ^status = #draft
* ^experimental = true

* extension contains
    status 1..1 MS and
    period 1..1 MS and
    reason 1..1 MS and
    changedBy 1..1 MS


* extension[status] ^short = "Status of the PlanDefinition during this period"
* extension[status].value[x] 1..1
* extension[status].value[x] only code
* extension[status].valueCode from PublicationStatusVS (required)

* extension[period] ^short = "Period during which this status was effective"
* extension[period].value[x] 1..1
* extension[period].value[x] only Period

* extension[reason] ^short = "Reason for changing the PlanDefinition status"
* extension[reason].value[x] 1..1
* extension[reason].value[x] only string

* extension[changedBy] ^short = "Person who changed the PlanDefinition status"
* extension[changedBy].value[x] 1..1
* extension[changedBy].value[x] only Reference
* extension[changedBy].valueReference only Reference(Practitioner or PractitionerRole)
