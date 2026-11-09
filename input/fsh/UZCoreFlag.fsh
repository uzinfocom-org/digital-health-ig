Profile: UZCoreFlag
Parent: Flag
Id: uz-core-flag
Title: "UZ Core Flag"
Description: "Uzbekistan Core Flag profile, used to record a patient's eligibility for donation or medical deferral."
* ^experimental = true
* ^status = #active
* identifier MS
* identifier ^short = "Business identifier of the donor flag"
* identifier.system 1..1
* status MS
* status from FlagStatusVS (required)
* status ^short = "Status of the flag, independent of the donor's medical eligibility"
* category from FlagCategoryVS (preferred)
* category ^short = "General category of the flag"
* code MS
* code from DonorEligibilityVS (required)
* code ^short = "Donation eligibility or medical deferral"
* subject MS
* subject only Reference(UZCorePatient)
* subject ^short = "Patient whose donation eligibility is recorded"
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Encounter during which the donation decision was made"
* author only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCoreDevice or UZCorePatient or UZCoreRelatedPerson)
* author ^short = "Person, organization or device responsible for the flag"
* period.start ^short = "Start of the flag's validity period"
* period.end ^short = "End of the flag's validity period, if known"

Instance: example-donation-eligible-flag
InstanceOf: UZCoreFlag
Usage: #example
Title: "Example UZ Core Flag - Eligible for Donation"
Description: "An active flag recording that a patient is eligible for donation."
* language = #uz
* status = #active
* category = $flag-category#admin
* code = DonorEligibilityCS#donation-eligible "Donorlikka ruxsat berilgan"
* subject = Reference(Patient/example-salim)
* encounter = Reference(Encounter/example-encounter)
* author = Reference(Practitioner/example-practitioner)
* period.start = "2026-11-09T09:00:00+05:00"
* period.end = "2026-11-09T18:00:00+05:00"

Instance: example-donation-deferred-flag
InstanceOf: UZCoreFlag
Usage: #example
Title: "Example UZ Core Flag - Medical Deferral"
Description: "An active medical deferral flag; active describes the flag, not permission to donate."
* language = #uz
* status = #active
* category = $flag-category#clinical
* code = DonorEligibilityCS#donation-deferred "Tibbiy sabablarga ko‘ra donorlikdan chetlatilgan"
* subject = Reference(Patient/example-salim)
* author = Reference(Practitioner/example-practitioner)
* period.start = "2026-11-09T09:00:00+05:00"

Instance: example-donation-minimal-flag
InstanceOf: UZCoreFlag
Usage: #example
Title: "Example UZ Core Flag - Minimal Donation Decision"
Description: "The mandatory data needed to record a donor eligibility decision when no business identifier has been assigned."
* language = #uz
* status = #active
* code = DonorEligibilityCS#donation-eligible "Donorlikka ruxsat berilgan"
* subject = Reference(Patient/example-salim)
