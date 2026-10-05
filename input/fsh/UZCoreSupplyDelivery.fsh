Profile: UZCoreSupplyDelivery
Parent: SupplyDelivery
Id: uz-core-supply-delivery
Title: "UZ Core SupplyDelivery"
Description: "Uzbekistan Core SupplyDelivery profile, used to record delivery and issue of blood products."

* ^status = #active
* ^experimental = true
* ^publisher = "Uzinfocom"
* ^date = "2026-09-30"


* identifier MS
* identifier ^short = "Delivery or issue record identifier"
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
* occurrence[x] only Period
* occurrencePeriod MS
* occurrencePeriod.start MS
* occurrencePeriod.start ^short = "Transfer date and time"
* occurrencePeriod.end MS
* occurrencePeriod.end ^short = "Issue date and time"
* supplier MS
* supplier only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* receiver MS
* receiver only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* receiver ^short = "Receiving organization or healthcare professional"
* suppliedItem MS
* suppliedItem.quantity MS
* suppliedItem.item[x] MS
* suppliedItem.item[x] only CodeableConcept or Reference(UZCoreMedication or Substance or Device or UZCoreBiologicallyDerivedProduct or NutritionProduct or UZCoreInventoryItem)

Instance: example-blood-product-supply-delivery
InstanceOf: UZCoreSupplyDelivery
Usage: #example
Title: "Blood component delivery"
Description: "Delivery of a red blood cell component with transfer and issue times."
* identifier.value = "DEL-2026-0001"
* status = #completed
* type = $supplydelivery-supplyitemtype#biologicallyderivedproduct
* occurrencePeriod.start = "2026-09-15T09:00:00+05:00"
* occurrencePeriod.end = "2026-09-15T10:00:00+05:00"
* suppliedItem.quantity = 263 'mL' "mL"
* suppliedItem.itemReference = Reference(example-blood-component-product)
