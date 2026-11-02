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

* extension contains SupplyDeliveryDeliverFrom named deliverFrom 0..1 MS
* extension[deliverFrom] ^short = "Location the items were dispatched from, such as the sending warehouse"

* suppliedItem MS
* suppliedItem.quantity MS
* suppliedItem.item[x] MS
* suppliedItem.item[x] only CodeableConcept or Reference(UZCoreMedication or Substance or UZCoreDevice or UZCoreBiologicallyDerivedProduct or NutritionProduct or InventoryItem)


Instance: example-blood-product-supply-delivery
InstanceOf: UZCoreSupplyDelivery
Usage: #example
Title: "Blood component delivery"
Description: "Delivery of a red blood cell unit for a patient to the receiving hospital."

* identifier[delivery].value = "DEL-2026-0001"
* basedOn = Reference(example-supply-request)
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


Instance: example-warehouse-transfer-supply-delivery
InstanceOf: UZCoreSupplyDelivery
Usage: #example
Title: "Transfer between warehouses"
Description: "Transfer of paracetamol from a hospital's central warehouse to its surgical department storeroom. The supplier is the hospital itself, and the deliverFrom extension identifies the sending warehouse."

* identifier[delivery].value = "TR-2026-0042"
* status = #completed
* type = $supplydelivery-supplyitemtype#medication "Medication"
* occurrenceDateTime = "2026-10-28T11:30:00+05:00"
* supplier = Reference(tashkent-diseases-hospital)
* receiver = Reference(tashkent-diseases-hospital)
* extension[deliverFrom].valueReference = Reference(example-central-warehouse)
* destination = Reference(example-surgery-storeroom)
* suppliedItem.quantity.value = 200
* suppliedItem.quantity.unit = "tablets"
* suppliedItem.itemReference = Reference(example-medication)


Instance: example-central-warehouse
InstanceOf: UZCoreLocation
Usage: #example
Title: "Hospital central warehouse"
Description: "Illustrative central warehouse of a hospital, the sending location in the warehouse transfer example."
* language = #en
* status = #active
* mode = #instance
* name = "Central warehouse"
* managingOrganization = Reference(tashkent-diseases-hospital)


Instance: example-surgery-storeroom
InstanceOf: UZCoreLocation
Usage: #example
Title: "Surgical department storeroom"
Description: "Illustrative storeroom of a hospital's surgical department, the receiving location in the warehouse transfer example."
* language = #en
* status = #active
* mode = #instance
* name = "Surgical department storeroom"
* managingOrganization = Reference(tashkent-diseases-hospital)
