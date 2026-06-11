Profile: UZCoreServiceRequestLaboratory
Parent: ServiceRequest
Id: uz-core-servicerequest-laboratory
Title: "UZ Core ServiceRequest Laboratory"
Description: "UZCoreServiceRequestLaboratory defines how laboratory orders are represented in the Uzbekistan Digital Health Platform (DHP) using the HL7 FHIR ServiceRequest resource, in accordance with the UZ Core Implementation Guide."
* ^experimental = true
* ^status = #active
* identifier MS
* identifier ^short = "Unique identifier for the (e.g., laboratory) referral or order."
* requisition MS
* requisition ^short = "A common identifier used to group multiple ServiceRequest resources created as part of a single referral, visit, or a single specimen collection episode."
* status MS
* status from ServiceRequestStatusVS
* status ^short = "The status of a service order"
* intent MS
* intent from RequestIntentVS
* intent ^short = "Indicates the level of obligation and intent of the service request, specifying whether the request represents an official order to be performed."
* category MS
* category from LabServiceCategoriesVS (extensible)
* category ^short = "The category of the laboratory service being requested, such as hematology, biochemistry, or microbiology. This element provides a high-level classification of the type of laboratory service being ordered."
* doNotPerform MS
* doNotPerform ^short = "Indicates that the service described by the ServiceRequest should not be performed."
* code MS
* code from ServiceRequestLabCodesVS (extensible)
* code ^short = "Specifies the laboratory test, panel, or service being requested. The codes used represent orderable laboratory services and must not be used for analytical result observations."
* subject MS
* subject only Reference(UZCorePatient or UZCoreLocation)
* subject ^short = "The patient for whom the laboratory referral or order is issued. This element identifies the individual who is the subject of the requested laboratory investigation."
* encounter MS
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "The healthcare encounter during which the laboratory referral or order was created or to which the laboratory investigation is related. This element provides clinical context for the ServiceRequest, such as an outpatient visit or inpatient hospitalization."
* occurrence[x] MS
* occurrence[x] ^short = "This element is used to indicate the intended or actual timing of the laboratory service"
* authoredOn MS
* authoredOn ^short = "The date and time when the ServiceRequest was authored and formally issued by the requester."
* requester MS
* requester only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or UZCoreRelatedPerson)
* requester ^short = "The individual, role, or organization that authored and issued the laboratory referral/order. This element identifies the healthcare professional or organizational unit responsible for initiating the ServiceRequest."
* reason MS
* reason from ConditionCodeVS
* reason ^short = "A reason to a Condition or other clinical resource that represents the medical justification for the laboratory referral, such as a diagnosis coded using ICD-10. This allows structured representation of diagnosis details including onset date and clinical status."

* extension contains PaymentType named paymentType 0..1 MS
* extension[paymentType] ^short = "Payment type for the laboratory service"
* extension[paymentType] ^definition = "Indicates the type of payment or financing model used for the requested laboratory service. This extension may be used when a laboratory test is ordered directly by a laboratory medical registrar without a prior physician referral, for example when the patient receives the laboratory service as a paid service."
* extension[paymentType] ^comment = "For example, this extension can be used to distinguish paid laboratory services from services covered by state programs, insurance, or other financing mechanisms. In the direct-to-laboratory scenario, the value may be set to 'paid'."

* insurance MS
* insurance only Reference(Coverage)
* insurance ^short = "Insurance coverage or funding source applicable to the requested service."
* supportingInfo MS
* supportingInfo only CodeableReference(ServiceRequest)
* supportingInfo ^short = "Additional clinical or administrative information supporting or justifying the requested service."
* specimen MS
* specimen only Reference(UZCoreSpecimen)
* specimen ^short = "The specimen or specimens to be analyzed as part of the requested laboratory service."
* note ^short = "Doctor's comment or conclution upon referral"
* patientInstruction MS //we need to add markdown patient instructions.
* patientInstruction ^short = "Instructions in terms that are understood by the patient or their caregiver regarding the laboratory service, such as preparation requirements or post-service care instructions."


Instance: UZCoreServiceRequestLab-Example01
InstanceOf: UZCoreServiceRequestLaboratory
Usage: #example
Title: "UZCore ServiceRequest (Lab) Example"
Description: "Example laboratory ServiceRequest instance for UZCore."
* status = $service-request-status#active
* intent = $request-intent#order
* doNotPerform = false
* code = lab-pan-cs#lab-pan-E "CBC panel"
* subject = Reference(Patient/example-salim)
* performer[0] = Reference(Organization/tashkent-diseases-hospital)
* encounter = Reference(Encounter/example-encounter)
* occurrenceDateTime = "2026-01-16T09:30:00+05:00"
* authoredOn = "2026-01-16T09:10:00+05:00"
* requester = Reference(Practitioner/example-practitioner)
// * insurance[0] = Reference(Coverage/uz-coverage-example-01) We don't have Coverage profile  yet
//* supportingInfo[0] = Reference(UZCoreServiceRequest/uz-servicerequest-supporting-01)

* extension[paymentType].valueCodeableConcept = payment-type-cs#paytype-0001-0001 "Free"


* specimen[0] = Reference(Specimen/example-specimen-blood-cbc)
* note[0].text = "Please perform CBC urgently."
