CodeSystem: ProcedureEventStatusCS
Id: procedure-event-status-cs
Title: "Procedure Event Status translations"
Description: "Procedure Event Status supplement with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/CodeSystem/procedure-event-status-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $event-status
* ^version = "5.0.0"
* ^language = #en

* #preparation
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tayyorlanish"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Подготовка"

* #in-progress
  * ^designation[0].language = #uz
  * ^designation[=].value = "Jarayonda"
  * ^designation[+].language = #ru
  * ^designation[=].value = "В процессе"

* #not-done
  * ^designation[0].language = #uz
  * ^designation[=].value = "Bajarilmadi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Не выполнено"

* #on-hold
  * ^designation[0].language = #uz
  * ^designation[=].value = "Vaqtinchalik to‘xtatilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Приостановлено"

* #stopped
  * ^designation[0].language = #uz
  * ^designation[=].value = "To‘xtatilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Остановлено"

* #completed
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tugallangan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Завершено"

* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xato bilan kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Введено с ошибкой"

* #unknown
  * ^designation[0].language = #uz
  * ^designation[=].value = "Noma'lum"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неизвестно"
