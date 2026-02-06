Profile: UZCoreMedicationDispense
Parent: MedicationDispense
Id: uz-core-medication-dispense
Title: "UZ Core Medication Dispense"
Description: "Uzbekistan Core profile for MedicationDispense, used to record the provision of a medication to a patient"
* ^experimental = true
* ^status = #active
* ^date = "2025-02-24"
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

* notPerformedReason.reference only Reference(DetectedIssue)
* medication.reference only Reference(Medication)
* subject only Reference(UZCorePatient or Group)
* performer.actor only Reference(Practitioner or PractitionerRole or Organization or Patient or Device or RelatedPerson or CareTeam)
* authorizingPrescription only Reference(MedicationRequest)
* receiver only Reference(Patient or Practitioner or RelatedPerson or Location or PractitionerRole)


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
  * code = #capsules
* whenHandedOver = "2025-02-24T10:30:00+05:00"
* recorded = "2025-02-24T10:35:00+05:00"
* renderedDosageInstruction = "Take one capsule three times a day for 10 days"