CodeSystem: SupplyRequestStatusCS
Id: supply-request-status-cs
Title: "Supply request status translations"
Description: "Supply request status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(supply-request-status-cs, $supplyrequest-status, 5.0.0)

* #draft
  * ^designation[0].language = #ru
  * ^designation[=].value = "Черновик"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Qoralama"

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активная"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"

* #suspended
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приостановлена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "To'xtatilgan"

* #cancelled
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отменена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bekor qilingan"

* #completed
  * ^designation[0].language = #ru
  * ^designation[=].value = "Завершена"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yakunlangan"

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


