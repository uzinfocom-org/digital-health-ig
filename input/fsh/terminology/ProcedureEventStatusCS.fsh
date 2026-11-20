CodeSystem: ProcedureEventStatusCS
Id: procedure-event-status-cs
Title: "Procedure event status translations"
Description: "Procedure event status supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(procedure-event-status-cs, $event-status, 5.0.0)

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
