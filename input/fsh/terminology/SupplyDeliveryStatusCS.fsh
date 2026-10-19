CodeSystem: SupplyDeliveryStatusCS
Id: supply-delivery-status-cs
Title: "Supply delivery status translations"
Description: "Supply delivery status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(supply-delivery-status-cs, $supplydelivery-status, 5.0.0)

* #in-progress
  * ^designation[0].language = #ru
  * ^designation[=].value = "В процессе"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jarayonda"

* #completed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Завершено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yakunlangan"

* #abandoned
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прервано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ошибочная запись"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
