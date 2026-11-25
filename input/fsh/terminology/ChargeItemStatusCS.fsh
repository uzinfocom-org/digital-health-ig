CodeSystem: ChargeItemStatusCS
Id: chargeitem-status-cs
Title: "ChargeItem status translations"
Description: "ChargeItem status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(chargeitem-status-cs, $chargeitem-status, 5.0.0)

* #planned
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запланировано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Rejalashtirilgan"

* #billable
  * ^designation[0].language = #ru
  * ^designation[=].value = "Готово к выставлению счёта"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hisob-kitobga tayyor"

* #not-billable
  * ^designation[0].language = #ru
  * ^designation[=].value = "Не подлежит оплате"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'lovga tegishli emas"

* #aborted
  * ^designation[0].language = #ru
  * ^designation[=].value = "Прервано"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"

* #billed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Счёт выставлен"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Hisob taqdim etilgan"

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
