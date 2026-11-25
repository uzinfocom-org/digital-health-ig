CodeSystem: BDPDispenseStatusCS
Id: bdp-dispense-status-cs
Title: "BiologicallyDerivedProductDispense status translations"
Description: "BiologicallyDerivedProductDispense status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(bdp-dispense-status-cs, $bdp-dispense-status, 5.0.0)

* #preparation
  * ^designation[0].language = #ru
  * ^designation[=].value = "Подготовка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tayyorlash"

* #in-progress
  * ^designation[0].language = #ru
  * ^designation[=].value = "В процессе"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jarayonda"

* #allocated
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выделен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ajratilgan"

* #issued
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выдан"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Berilgan"

* #unfulfilled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не выполнено"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bajarilmagan"

* #returned
  * ^designation[0].language = #ru
  * ^designation[=].value = "Возвращён"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qaytarilgan"

* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Внесено ошибочно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"

* #unknown
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma’lum"
