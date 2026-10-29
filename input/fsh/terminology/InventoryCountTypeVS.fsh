ValueSet: InventoryCountTypeVS
Id: inventory-count-type-vs
Title: "Inventory count type"
Description: "Inventory count types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/inventory-count-type-vs"
* ^experimental = true
* ^language = #uz
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(InventoryCountTypeCS)

* include codes from system $inventoryreport-counttype