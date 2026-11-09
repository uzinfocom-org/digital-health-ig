CodeSystem: InventoryCountTypeCS
Id: inventory-count-type-cs
Title: "Inventory count type translations"
Description: "Inventory count type supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(inventory-count-type-cs, $inventoryreport-counttype, 5.0.0)

* #snapshot
  * ^designation[0].language = #ru
  * ^designation[=].value = "Текущий остаток"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Joriy qoldiq"

* #difference
  * ^designation[0].language = #ru
  * ^designation[=].value = "Изменение остатка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qoldiq o'zgarishi"


