Profile: UZCoreClaim
Parent: Claim
Id: uz-core-claim
Title: "UZ Core Claim"
Description: "Uzbekistan Core Claim profile, used for insurance claims, pre-authorization and predetermination processes. "
* ^experimental = true
* ^date = "2026-06-22"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Business Identifier for claim"

* status MS 
* status ^short = "Status of current claim"
* status from FMStatusVS (required)

* type MS
* type ^short = "Category or discipline"
* type from ClaimTypeVS (required)

* use MS
* use ^short = "preauthorization | predetermination | claim"
* use from ClaimUseVS (required)


* patient MS
* patient ^short = "The recipient of the products and services"
* patient only Reference(UZCorePatient)

* created MS
* created ^short = "Resource creation date"

* insurer MS
* insurer ^short = "Target"
* insurer only Reference(UZCoreOrganization)

* provider MS
* provider ^short = "Party responsible for the claim"
* provider only Reference(UZCoreOrganization)

* prescription MS
* prescription ^short = "Refers to the reimbursement prescription."
// The reference will be changed to UZCoreMedicationRequest after UZCoreMedicationRequest is published in the IG.
* prescription only Reference(MedicationRequest)

* referral MS
* referral ^short = "Treatment referral"
* referral only Reference(ServiceRequest)

* facility MS
* facility ^short = "Servicing facility"
* facility only Reference(UZCoreLocation or UZCoreOrganization)

* diagnosis MS
  * diagnosis[x] MS

* insurance MS
  * focal 1..1 MS
  * focal ^short = "Coverage to be used for adjudication"
  * coverage 1..1 MS 
  * coverage ^short = "Insurance information"
  * coverage only Reference(Coverage)

* total 0..1 MS 
  * value 0..1 MS
  * value ^short = "Numerical value (with implicit precision)"
  * currency 0..1 MS
  * currency ^short = "ISO 4217 currency code"
  * currency from $currencies-vs (required)


Instance: example-claim
InstanceOf: UZCoreClaim
Description: "Example of claim responce"
Usage: #example
* language = #en
* status = #active
* type = $claim-type#institutional 
* use = #preauthorization
* patient = Reference(Patient/example-salim)
* created = "2026-10-03"

* provider = Reference(Organization/tashkent-diseases-hospital)
// comment will deleted after UZCoreMedicationRequest will be published in IG
// * prescription = Reference(MedicationRequest/example-medication-request)
* referral = Reference(ServiceRequest/UZCoreServiceRequestLab-Example01)
* facility = Reference(Organization/tashkent-diseases-hospital)

* total.value = 100000
* total.currency = #UZS