Profile: UZCoreMedicationDispense
Parent: MedicationDispense
Id: uz-core-medication-dispense
Title: "UZ Core Medication Dispense"
Description: "Uzbekistan Core profile for MedicationDispense, used to record the provision of a medication to a patient"
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
* authorizingPrescription MS
* quantity MS
* recorded MS
* whenPrepared MS
* whenHandedOver MS
* receiver MS

* status from MedicationDispenseStatusVS (required)
* notPerformedReason from MedicationDispenseStatusReasonVS (preferred)
* category from MedicationDispenseAdminLocationVS (preferred)
* medication from MedicationClassificationVS (required)
* quantity.code from MedicationTotalVolumeUnitsVS

* notPerformedReason only CodeableReference(DetectedIssue)
* medication only CodeableReference(Medication)
* subject only Reference(UZCorePatient or Group)
* performer.actor only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or Device or UZCoreRelatedPerson or CareTeam)
* authorizingPrescription only Reference(MedicationRequest)
* receiver only Reference(UZCorePatient or UZCorePractitioner or UZCoreRelatedPerson or UZCoreLocation or UZCorePractitionerRole)


Instance: example-medication-dispense
InstanceOf: UZCoreMedicationDispense
Description: "Example of a medication dispense for a patient"
Usage: #example
* status = #completed
* medication.concept.text = "Amoxicillin 500mg capsule"
* subject = Reference(example-david)
* performer[0].actor = Reference(example-practitioner)
* performer[1].actor = Reference(tashkent-diseases-hospital)
* authorizingPrescription[0] = Reference(example-medicationrequest)
* quantity
  * value = 30
  * unit = "capsules"
  * system = $ucum
  * code = #"1"
* whenHandedOver = "2025-02-24T10:30:00+05:00"
* recorded = "2025-02-24T10:35:00+05:00"
* receiver = Reference(example-david)