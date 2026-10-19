ValueSet: InventoryItemNameTypeVS
Id: inventoryitem-nametype-vs
Title: "InventoryItem name type"
Description: "Types of name an inventory item can carry"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/inventoryitem-nametype-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(InventoryItemNameTypeCS)

* include codes from system $inventoryitem-nametype