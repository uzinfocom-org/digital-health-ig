ValueSet: InventoryItemStatusVS
Id: inventory-item-status-vs
Title: "InventoryItem status"
Description: "Codes representing the status of an InventoryItem."

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/inventory-item-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(InventoryItemStatusCS)

* include codes from system $inventoryitem-status