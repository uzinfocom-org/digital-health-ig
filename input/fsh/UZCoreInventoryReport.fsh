Profile: UZCoreInventoryReport
Parent: InventoryReport
Id: uz-core-inventoryreport
Title: "UZ Core InventoryReport"
Description: "Uzbekistan Core InventoryReport profile, used to report inventory and stock items"

* ^status = #active
* ^experimental = true
* ^date = "2026-10-30"
* ^publisher = "Uzinfocom"

* identifier MS
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier contains inventoryReport 0..1 MS
* identifier[inventoryReport].system 1..1 MS
* identifier[inventoryReport].system = $inventory-report-identifier
* identifier[inventoryReport] ^short = "Inventory report identifier assigned by the managing organization"

* status MS
* status from InventoryReportStatusVS (required)

* countType MS
* countType from InventoryCountTypeVS (required)

* operationType MS
* operationType from InventoryOperationTypeVS (extensible)

* operationTypeReason MS
* operationTypeReason from InventoryOperationReasonVS (extensible)

* reportedDateTime MS
* reporter MS
* reporter only Reference(UZCorePractitioner or UZCorePatient or UZCoreRelatedPerson)
* reportingPeriod MS

* inventoryListing MS
* inventoryListing.location MS
* inventoryListing.location only Reference(UZCoreLocation)
* inventoryListing.itemStatus MS
* inventoryListing.itemStatus from InventoryStatusVS (extensible)
* inventoryListing.countingDateTime MS

* inventoryListing.item MS
* inventoryListing.item.category MS
* inventoryListing.item.category from InventoryItemCategoryVS (extensible)
* inventoryListing.item.quantity MS
* inventoryListing.item.quantity from InventoryUnitVS (extensible)
* inventoryListing.item.item MS
* inventoryListing.item.item only CodeableReference(UZCoreMedication or UZCoreDevice or NutritionProduct or UZCoreInventoryItem or UZCoreBiologicallyDerivedProduct)

* note MS


Instance: example-inventory-report-medication-receipt
InstanceOf: UZCoreInventoryReport
Title: "Example UZ Core InventoryReport - Medication receipt"
Description: "Example inventory report for a medication stock addition"
Usage: #example
* language = #uz
* status = #active
* countType = #difference
* operationType = $inventory-operation-type-cs#invop-0001-00001 "Kirim"
* operationTypeReason = $inventory-operation-reason-cs#invrs-0001-00004 "Yangi kirim"
* reportedDateTime = "2026-11-01T09:00:00+05:00"
* reporter = Reference(Practitioner/example-practitioner)
* reportingPeriod.start = "2026-10-01"
* reportingPeriod.end = "2026-10-31"

* inventoryListing[0].location = Reference(Location/example-location-2)
* inventoryListing[0].itemStatus = $inventory-status-cs#available "Mavjud"
* inventoryListing[0].countingDateTime = "2026-10-31T18:00:00+05:00"

* inventoryListing[0].item[0].category = $inventory-item-category-cs#invct-0001-00001 "Dori vositasi"
* inventoryListing[0].item[0].quantity.value = 100
* inventoryListing[0].item[0].quantity.unit = "Quti"
* inventoryListing[0].item[0].quantity.system = "http://snomed.info/sct"
* inventoryListing[0].item[0].quantity.code = #418445004
* inventoryListing[0].item[0].item = Reference(Medication/example-medication)
