CodeSystem: InventoryItemCodeCS
Id: inventory-item-code-cs
Title: "Inventory Item Codes"
Description: "Local inventory catalogue codes for blood products."
* insert OriginalCodeSystemDraft(inventory-item-code-cs)

* #RBC-LR-450 "Leykotsitlardan tozalangan eritrotsitlar"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Эритроциты с удалёнными лейкоцитами"
  * ^designation[+].language = #en
  * ^designation[=].value = "Red blood cells, leukocytes reduced"
