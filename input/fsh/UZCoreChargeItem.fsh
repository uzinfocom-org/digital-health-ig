Profile: UZCoreChargeItem
Parent: ChargeItem
Id: uz-core-charge-item
Title: "UZ Core ChargeItem"
Description: "Uzbekistan Core ChargeItem profile, used to record the actual cost of a medication dispensed by a pharmacy to a patient. It is created when a MedicationDispense is registered and linked to the specific dispensing event."
* ^experimental = true
* ^date = "2026-11-06"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains charge-item 0..1 MS
* identifier[charge-item].system 1..1 MS
* identifier[charge-item].system = $charge-item-identifier
* identifier[charge-item] ^short = "ChargeItem identifier assigned by the healthcare information system"

* status MS
* status = #billable

* code MS
* code from ChargeItemCodeVS (extensible)

* subject MS
* subject only Reference(UZCorePatient)

* occurrence[x] MS

* performer MS
* performer.actor MS
* performer.actor only Reference(UZCorePractitionerRole)

* performingOrganization MS
* performingOrganization only Reference(UZCoreOrganization)

* quantity MS

* totalPriceComponent MS
* totalPriceComponent ^short = "Total actual cost of the dispensed medication, calculated from sale_price / price. Expressed in UZS and applies only to the quantity actually dispensed."

* service MS
* service only CodeableReference(UZCoreMedicationDispense)

Instance: example-charge-item-medication-dispense
InstanceOf: UZCoreChargeItem
Title: "Example UZ Core ChargeItem - Paracetamol"
Description: "Example of a charge item recording the actual cost of dispensed paracetamol."
Usage: #example

* identifier[charge-item].value = "CI-2026-0001"
* status = #billable
* code = $sct#373784005 "Dispensing medication"
* subject = Reference(example-salim)

* quantity
  * value = 10
  * unit = "dona"
  * system = $medication-total-volume-local-units
  * code = #piece

* totalPriceComponent.type = #base
* totalPriceComponent.amount.value = 15000
* totalPriceComponent.amount.currency = #UZS


* service.reference = Reference(example-medication-dispense-outpatient)


