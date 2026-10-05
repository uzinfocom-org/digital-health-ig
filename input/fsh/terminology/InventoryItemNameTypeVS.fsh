ValueSet: InventoryItemNameTypeVS
Id: inventoryitem-nametype-vs
Title: "Inventory Item Name Type VS"
Description: "ValueSet for inventory item name type codes"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/inventoryitem-nametype-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(InventoryItemNameTypeCS)

* include codes from system $inventoryitem-nametype