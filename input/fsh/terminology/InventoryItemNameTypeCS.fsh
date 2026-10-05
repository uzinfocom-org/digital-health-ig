CodeSystem: InventoryItemNameTypeCS
Id: inventoryitem-nametype-cs
Title: "Inventory Item Name Type Translations"
Description: "Inventory Item Name Type supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(inventoryitem-nametype-cs, $inventoryitem-nametype, 1.0.1)

* #trade-name "Trade Name"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Торговое наименование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Savdo nomi"

* #alias "Alias"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Альтернативное наименование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Muqobil nom"

* #original-name "Original Name"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Оригинальное наименование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Asl nomi"

* #preferred "Preferred"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предпочтительное наименование"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Afzal nom"