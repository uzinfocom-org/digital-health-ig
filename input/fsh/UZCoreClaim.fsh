Profile: UZCoreClaim
Parent: Claim
Id: uz-core-claim
Description: "Uzbekistan Core Claim profile, used for insurance claims, pre-authorization and predetermination processes. "
* ^experimental = true
* ^date = "2026-06-22"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^short = "Business Identifier for a claim response"

* status MS 
* status ^short = "Status of current claim"
* status from ClaimFMStatusVS (required)

* type MS
* type ^short = "Category or discipline"
* type from ClaimTypeCodeVS (required)

* use MS
* use ^short = "preauthorization | predetermination"
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

* referral MS
* referral ^short = "Treatment referral"
* referral only Reference(ServiceRequest)

* facility MS
* facility ^short = "Servicing facility"
* facility only Reference(Organization)

* diagnosis MS
  * diagnosis[x] MS
  * diagnosisCodeableConcept

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
  * currency ^short = "Insurance information"
  * currency from $currencies-vs (required)


Instance: example-claim
InstanceOf: UZCoreClaim
Description: "Example of claim responce"
Usage: #example
* language = #en
* status = #active
* type = #institutional 
* use = #claim
* patient = Reference(Patient/example-salim)
* created = "2026-10-03"
