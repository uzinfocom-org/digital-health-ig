CodeSystem: InventoryItemStatusCS
Id: inventory-item-status-cs
Title: "InventoryItem status translations"
Description: "InventoryItem status codes, supplemented with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(inventory-item-status-cs, $inventoryitem-status, 5.0.0)

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активна"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"

* #inactive
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неактивна"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nofaol"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ошибочная запись"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"

* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma'lum"

