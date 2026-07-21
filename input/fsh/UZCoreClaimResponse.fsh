Profile: UZCoreClaimResponse
Parent: ClaimResponse
Id: uz-core-claim-response
Title: "UZ Core Claim Response"
Description: "Uzbekistan Core Claim Response profile, used to represent claim adjudication and reimbursement responses"

* ^experimental = true
* ^status = #active
* ^date = "2026-06-22"
* ^publisher = "Uzinfocom"

* extension contains ClaimResponseCancellationReason named cancellationReason 0..1 MS

* extension[cancellationReason] ^short = "Reason for cancellation"
* extension[cancellationReason] ^definition = "Reason why the ClaimResponse was cancelled. For example, when the pre-authorization validity period has expired."

* identifier MS
* identifier ^short = "Business identifier for the claim response"

* status MS
* status ^short = "Current status of the claim response"
* status from FMStatusVS (required)

* type MS
* type ^short = "Category or discipline of the claim"
* type from ClaimTypeVS (required)

* use MS
* use ^short = "Purpose of the claim response"
* use from ClaimUseVS (required)

* patient 1..1 MS
* patient only Reference(UZCorePatient)
* patient ^short = "Patient associated with the claim"

* created MS
* created ^short = "Date the claim response was created"

* insurer MS
* insurer only Reference(UZCoreOrganization)
* insurer ^short = "Organization responsible for reimbursement"

* request MS
* request only Reference(UZCoreClaim) 
* request ^short = "Reference to the original claim"

* outcome MS
* outcome ^short = "Processing outcome of the claim"
* outcome from ClaimResponseOutcomeVS (required)

* decision MS
* decision ^short = "Adjudication decision"
* decision from ClaimResponseDecisionVS (required)

* preAuthRef MS
* preAuthRef ^short = "Reference to a prior authorization"

* preAuthPeriod MS
* preAuthPeriod ^short = "Validity period of the prior authorization"
* preAuthPeriod.start ^short = "Authorization start date"
* preAuthPeriod.end ^short = "Authorization end date"

* total MS
* total ^short = "Summary adjudication amounts"
* total.category ^short = "Type of adjudication information"
* total.category from ClaimResponseCategoryVS
* total.amount ^short = "Total amount for the category"



Instance: example-claim-response
InstanceOf: UZCoreClaimResponse
Title: "Example Claim Response"
Description: "An example claim response for institutional claim"
Usage: #example

* status = #cancelled

* extension[cancellationReason].valueCodeableConcept = cancellation-reason-cs#Reimb0001-00001 "Expired"

* type = $claim-type#institutional

* use = #preauthorization

* patient = Reference(Patient/example-salim)

* created = "2026-03-10"

* insurer = Reference(Organization/example-organization)

* request = Reference(Claim/example-claim)

* outcome = #complete

* decision = $claim-response-decision#approved "Approved"

* preAuthRef = "PA-2026-001"

* preAuthPeriod.start = "2026-03-11"
* preAuthPeriod.end = "2026-05-11"

* total[0].category = $claim-response-category#benefit "Benefit Amount"
* total[0].amount.value = 10000
* total[0].amount.currency = #UZS