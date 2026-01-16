Profile: UZCoreServiceReqeust
Parent: ServiceRequest
Id: uz-core-service-request
Title: "UZ Core Service Request Laboratory"
Description: "UZCoreServiceRequest defines how laboratory orders are represented in the Uzbekistan Digital Health Platform (DHP) using the HL7 FHIR ServiceRequest resource, in accordance with the UZCore Implementation Guide."
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
* intent from ServiceRequestIntentVS
* intent ^short = "Indicates the level of obligation and intent of the service request, specifying whether the request represents an official order to be performed. "
* doNotPerform MS
* doNotPerform ^short = "Indicates that the service described by the ServiceRequest should not be performed."
* code MS
* code from ServiceRequesLabCodesVS //Procedure codes and the UZCoreProcedure profile are not prepared yet
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
* requester only Reference(UZCorePractitioner or UZCorePractitioner or UZCoreOrganization or UZCorePatiner or UZCoreRelatedPerson)
* requester ^short = "The individual, role, or organization that authored and issued the laboratory referral/order. This element identifies the healthcare professional or organizational unit responsible for initiating the ServiceRequest."
* reason MS
* reason $icd-10
* reason ^short = "A reason to a Condition or other clinical resource that represents the medical justification for the laboratory referral, such as a diagnosis coded using ICD-10. This allows structured representation of diagnosis details including onset date and clinical status."
* insurance MS
* insurance only Reference(Coverage)
* insurance ^short = "Insurance coverage or funding source applicable to the requested service."
* supportingInfo MS
* supportingInfo only Reference(ServiceReqeust)
* supportingInfo ^short = "Additional clinical or administrative information supporting or justifying the requested service."
* specimen MS
* specimen only Reference(Specimen)
* specimen ^short = "The specimen or specimens to be analyzed as part of the requested laboratory service."
* note ^short = "Doctor's comment or conclution upon referral"
