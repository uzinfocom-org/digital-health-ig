Profile: UZCoreFlag
Parent: Flag
Id: uz-core-flag
Title: "UZ Core Flag"
Description: "Uzbekistan Core Flag profile, used to record a prospective warning or notification about a patient that users should be aware of, such as eligibility for blood donation or a medical deferral from it"
* ^experimental = true
* ^status = #active
* obeys uzcore-flag-1 and uzcore-flag-2
* identifier MS
* identifier ^short = "Business identifier of the flag"
* identifier.system 1..1
* status MS
* status from FlagStatusVS (required)
* status ^short = "Status of the flag, not of what the flag describes"
* category from FlagCategoryVS (preferred)
* category ^short = "General category of the flag"
* code MS
* code from FlagCodeVS (extensible)
* code ^short = "What the flag is about, such as blood donation eligibility or a temporary or permanent medical deferral"
* subject MS
* subject only Reference(UZCorePatient)
* subject ^short = "Patient the flag is about"
* encounter only Reference(UZCoreEncounter)
* encounter ^short = "Encounter during which the flag was raised"
* author only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCoreDevice or UZCorePatient or UZCoreRelatedPerson)
* author ^short = "Person, organization or device responsible for the flag"
* period.start ^short = "When the flag became active"
* period.end ^short = "When the flag was deactivated, or when a temporary deferral ends; otherwise empty while the flag is active"

Invariant: uzcore-flag-1
Description: "A temporary blood donation deferral states in period.end when it ends"
* severity = #error
* expression = "code.coding.where(system = 'https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs' and code = 'blood-donation-deferred-temporary').exists() implies period.end.exists()"

Invariant: uzcore-flag-2
Description: "An active permanent blood donation deferral has no period.end"
* severity = #error
* expression = "(status = 'active' and code.coding.where(system = 'https://terminology.dhp.uz/fhir/core/CodeSystem/blood-donor-eligibility-cs' and code = 'blood-donation-deferred-permanent').exists()) implies period.end.empty()"

Instance: example-donation-eligible-flag
InstanceOf: UZCoreFlag
Usage: #example
Title: "Example UZ Core Flag - Eligible for Blood Donation"
Description: "A flag that recorded a patient as eligible for blood donation, made inactive when a medical deferral was recorded."
* language = #uz
* status = #inactive
* category = $flag-category#admin
* code = BloodDonorEligibilityCS#blood-donation-eligible "Qon donorligiga ruxsat berilgan"
* subject = Reference(Patient/example-salim)
* author = Reference(Practitioner/example-practitioner)
* period.start = "2026-10-12T10:00:00+05:00"
* period.end = "2026-11-09T09:00:00+05:00"

Instance: example-donation-deferred-flag
InstanceOf: UZCoreFlag
Usage: #example
Title: "Example UZ Core Flag - Temporary Medical Deferral"
Description: "An active temporary medical deferral flag that ends on 2027-05-09; active describes the flag, not permission to donate blood."
* language = #uz
* status = #active
* category = $flag-category#clinical
* code = BloodDonorEligibilityCS#blood-donation-deferred-temporary "Tibbiy sabablarga ko'ra qon donorligidan vaqtincha chetlatilgan"
* subject = Reference(Patient/example-salim)
* author = Reference(Practitioner/example-practitioner)
* period.start = "2026-11-09T09:00:00+05:00"
* period.end = "2027-05-09T09:00:00+05:00"

Instance: example-donation-minimal-flag
InstanceOf: UZCoreFlag
Usage: #example
Title: "Example UZ Core Flag - Minimal Blood Donation Decision"
Description: "The mandatory data needed to record a blood donor eligibility decision when no business identifier has been assigned."
* language = #uz
* status = #active
* code = BloodDonorEligibilityCS#blood-donation-eligible "Qon donorligiga ruxsat berilgan"
* subject = Reference(Patient/example-nodira)
