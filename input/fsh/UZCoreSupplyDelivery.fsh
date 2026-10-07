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
* identifier ^short = "Delivery or issue record identifier"
* basedOn MS
// it will be changed in the future, but currently it is not required because the SupplyRequest resource is not yet implemented in the Uzbekistan Core IG
// * basedOn only Reference(UZCoreSupplyRequest)
* basedOn only Reference(SupplyRequest)
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
* occurrencePeriod.end MS
* supplier MS
* supplier only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* receiver MS
* receiver only Reference(UZCorePractitioner or UZCorePractitionerRole or UZCoreOrganization)
* receiver ^short = "Receiving organization or healthcare professional"
* suppliedItem MS
* suppliedItem.quantity MS
* suppliedItem.item[x] MS
// BiologicallyDerivedProduct will be replaced with UZCoreBiologicallyDerivedProduct and InventoryItem after the UZCoreBiologicallyDerivedProduct and UZCoreInventoryItem profiles are implemented in the Uzbekistan Core IG
* suppliedItem.item[x] only CodeableConcept or Reference(UZCoreMedication or Substance or Device or BiologicallyDerivedProduct or NutritionProduct or InventoryItem)

Instance: example-blood-product-supply-delivery
InstanceOf: UZCoreSupplyDelivery
Usage: #example
Title: "Blood component delivery"
Description: "Delivery of a red blood cell component with transfer and issue times."
* identifier.value = "DEL-2026-0001"
* status = #completed
* type = $supplydelivery-supplyitemtype#biologicallyderivedproduct "Biologically Derived Product"
* occurrencePeriod.start = "2026-09-15T09:00:00+05:00"
* occurrencePeriod.end = "2026-09-15T10:00:00+05:00"
* suppliedItem.quantity = 263 'mL' "mL"
//This example uses a reference to a BiologicallyDerivedProduct resource, but it will be changed in the future to use a reference to a UZCoreBiologicallyDerivedProduct resource after the UZCoreBiologicallyDerivedProduct profile is implemented in the Uzbekistan Core IG
// * suppliedItem.itemReference = Reference(example-blood-component-product)