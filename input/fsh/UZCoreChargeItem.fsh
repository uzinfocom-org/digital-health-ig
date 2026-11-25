Profile: UZCoreChargeItem
Parent: ChargeItem
Id: uz-core-chargeitem
Title: "UZ Core ChargeItem"
Description: "Uzbekistan Core ChargeItem profile, used to record a billable service, product or medication provided to a patient"
* ^status = #active
* ^experimental = true
* ^date = "2026-11-06"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains chargeItem 0..1 MS
* identifier[chargeItem].system 1..1 MS
* identifier[chargeItem].system = $charge-item-identifier
* identifier[chargeItem] ^short = "ChargeItem identifier assigned by the healthcare information system"

* status MS
* status from ChargeItemStatusVS (required)

* code MS
* code from ChargeItemCodeVS (preferred)

* subject MS
* subject only Reference(UZCorePatient or UZCoreGroup)

* partOf only Reference(UZCoreChargeItem)

* encounter MS
* encounter only Reference(UZCoreEncounter)

* occurrence[x] MS

* performer MS
* performer.actor MS
* performer.actor only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCoreHealthcareService or CareTeam or UZCorePatient or UZCoreDevice or UZCoreRelatedPerson)

* performingOrganization MS
* performingOrganization only Reference(UZCoreOrganization)
* requestingOrganization only Reference(UZCoreOrganization)
* costCenter only Reference(UZCoreOrganization)

* quantity MS

* enterer only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization or UZCorePatient or UZCoreDevice or UZCoreRelatedPerson)

* totalPriceComponent MS
* totalPriceComponent ^short = "Total price of the charged quantity"

* service MS
* service only CodeableReference(UZCoreDiagnosticReport or ImagingStudy or UZCoreImmunization or UZCoreMedicationAdministration or UZCoreMedicationDispense or UZCoreMedicationRequest or UZCoreObservation or UZCoreProcedure or UZCoreServiceRequest or UZCoreSupplyDelivery)

Instance: example-charge-item-medication-dispense
InstanceOf: UZCoreChargeItem
Title: "Example UZ Core ChargeItem - Paracetamol"
Description: "Example of a charge item recording the actual cost of dispensed paracetamol."
Usage: #example

* identifier[chargeItem].value = "CI-2026-0001"
* status = #billable
* code = $sct#373784005 "Dispensing medication"
* subject = Reference(example-salim)
* occurrenceDateTime = "2026-03-02T11:00:00+05:00"
* performer.actor = Reference(example-practitioner)
* performingOrganization = Reference(tashkent-diseases-hospital)

* quantity
  * value = 10
  * unit = "dona"
  * system = $medication-total-volume-local-units
  * code = #piece

* totalPriceComponent.type = #base
* totalPriceComponent.amount.value = 15000
* totalPriceComponent.amount.currency = #UZS

* service.reference = Reference(example-medication-dispense-outpatient)
