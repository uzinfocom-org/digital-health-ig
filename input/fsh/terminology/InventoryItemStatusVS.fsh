ValueSet: InventoryItemStatusVS
Id: inventoryitem-status-vs
Title: "InventoryItem status"
Description: "Statuses of an InventoryItem"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/inventoryitem-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(InventoryItemStatusCS)

* include codes from system $inventoryitem-status