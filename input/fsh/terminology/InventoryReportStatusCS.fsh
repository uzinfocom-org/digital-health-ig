CodeSystem: InventoryReportStatusCS
Id: inventory-report-status-cs
Title: "Inventory report status translations"
Description: "Inventory report status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(inventory-report-status-cs, $inventoryreport-status, 5.0.0)

* #draft
  * ^designation[0].language = #ru
  * ^designation[=].value = "Черновик"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qoralama"

* #requested
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрошен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "So‘ralgan"

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введён ошибочно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"


