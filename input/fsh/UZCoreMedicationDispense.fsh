Profile: UZCoreMedicationDispense
Parent: MedicationDispense
Id: uz-core-medication-dispense
Title: "UZ Core MedicationDispense"
Description: "Uzbekistan Core MedicationDispense profile, used to record the provision of a medication to a patient"
* ^experimental = true
* ^status = #active
* ^date = "2026-02-06"
* ^publisher = "Uzinfocom"

* identifier MS
* status MS
* notPerformedReason MS
* statusChanged MS
* category MS
* medication MS
* subject MS
* performer MS
* performer.actor MS
// add a typed reference to MedicationRequest when that is merged
* authorizingPrescription MS
* quantity MS
* quantity.value MS
* quantity.unit MS
* quantity.system MS
* quantity.code MS
* recorded MS
* whenPrepared MS
* whenHandedOver MS
* receiver MS

* status from MedicationDispenseStatusVS (required)
* notPerformedReason from MedicationDispenseStatusReasonVS (preferred)
* category from MedicationDispenseAdminLocationVS (preferred)
* medication from MedicationClassificationVS (required)
* quantity.code from MedicationTotalVolumeUnitsVS (required)

* notPerformedReason only CodeableReference(DetectedIssue)
* medication only CodeableReference(UZCoreMedication)
* subject only Reference(UZCorePatient or Group)
* performer.actor only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or Device or UZCoreRelatedPerson or CareTeam)
// * authorizingPrescription only Reference(UZCoreMedicationRequest)
* receiver only Reference(UZCorePatient or UZCorePractitioner or UZCoreRelatedPerson or UZCoreLocation or UZCorePractitionerRole)


Instance: example-medication-dispense
InstanceOf: UZCoreMedicationDispense
Title: "Example UZ Core MedicationDispense - Amoxicillin"
Description: "Example of a medication dispense for a patient"
Usage: #example
* identifier[0].value = "MD-2025-00001"
* status = #completed
* medication.concept.text = "Amoxicillin 500mg capsule"
* subject = Reference(example-david)
* performer[0].actor = Reference(example-practitioner)
* performer[1].actor = Reference(tashkent-diseases-hospital)
// * authorizingPrescription[0] = Reference(example-medicationrequest)
* quantity
  * value = 30
  * unit = "capsules"
  * system = $ucum
  * code = #"1"
* whenHandedOver = "2025-02-24T10:30:00+05:00"
* recorded = "2025-02-24T10:35:00+05:00"
* receiver = Reference(example-david)


// Outpatient dispense that fulfils the UZCoreMedicationRequest example (ibuprofen 400 mg, twice daily for five days -> 10 tablets).
Instance: example-medication-dispense-outpatient
InstanceOf: UZCoreMedicationDispense
Title: "Example UZ Core MedicationDispense - Outpatient ibuprofen"
Description: "Example of an outpatient dispense fulfilling an ibuprofen prescription: 10 ibuprofen 400 mg tablets handed to the patient"
Usage: #example
* identifier[0].value = "MD-2026-00002"
* status = #completed
* category = $medicationdispense-admin-location#outpatient
* medication.concept.text = "Ibuprofen 400 mg tablet"
* subject = Reference(example-salim)
// Authorising prescription is the UZCoreMedicationRequest example; uncomment once MedicationRequest is merged.
// * authorizingPrescription[0] = Reference(example-medication-request)
* performer[0].actor = Reference(example-practitioner)
* performer[1].actor = Reference(tashkent-diseases-hospital)
* quantity
  * value = 10
  * unit = "dona"
  * system = "https://terminology.dhp.uz/fhir/core/CodeSystem/medication-total-volume-local-units-cs"
  * code = #piece
* whenPrepared = "2026-03-02T10:50:00+05:00"
* whenHandedOver = "2026-03-02T11:00:00+05:00"
* recorded = "2026-03-02T11:05:00+05:00"
* receiver = Reference(example-salim)
