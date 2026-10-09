Profile: UZCoreSupplyDelivery
Parent: SupplyDelivery
Id: uz-core-supply-delivery
Title: "UZ Core SupplyDelivery"
Description: "Uzbekistan Core SupplyDelivery profile, used to record the delivery of supplies such as blood products, medications and medical devices"

* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^date = "2026-09-30"


* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains delivery 0..1 MS
* identifier[delivery].system 1..1 MS
* identifier[delivery].system = $supply-delivery-number
* identifier[delivery] ^short = "Delivery number assigned by the supplier, such as the blood service issuing blood components"

* basedOn MS
* basedOn only Reference(UZCoreSupplyRequest)

* partOf MS
* partOf only Reference(UZCoreSupplyDelivery or Contract)

* status MS
* status from SupplyDeliveryStatusVS (required)

* patient MS
* patient only Reference(UZCorePatient)

* type MS
* type from SupplyDeliveryTypeVS (required)

* occurrence[x] MS

* supplier MS
* supplier only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)

* receiver MS
* receiver only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* receiver ^short = "Receiving organization or healthcare professional"

* destination MS
* destination only Reference(UZCoreLocation)

* suppliedItem MS
* suppliedItem.quantity MS
* suppliedItem.item[x] MS
* suppliedItem.item[x] only CodeableConcept or Reference(UZCoreMedication or Substance or Device or UZCoreBiologicallyDerivedProduct or NutritionProduct or InventoryItem)


Instance: example-blood-product-supply-delivery
InstanceOf: UZCoreSupplyDelivery
Usage: #example
Title: "Blood component delivery"
Description: "Delivery of a red blood cell unit for a patient to the receiving hospital."

* identifier[delivery].value = "DEL-2026-0001"
* status = #completed
* patient = Reference(example-salim)
* type = $supplydelivery-supplyitemtype#biologicallyderivedproduct "Biologically Derived Product"
* occurrencePeriod.start = "2026-09-15T09:00:00+05:00"
* occurrencePeriod.end = "2026-09-15T10:00:00+05:00"
* supplier = Reference(example-organization)
* receiver = Reference(tashkent-diseases-hospital)
* destination = Reference(example-location)
* suppliedItem.quantity = 263 'mL' "mL"
* suppliedItem.itemReference = Reference(example-blood-component-product)
