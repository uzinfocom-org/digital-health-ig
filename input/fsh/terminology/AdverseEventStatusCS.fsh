CodeSystem: AdverseEventStatusCS
Id: adverse-event-status-cs
Title: "AdverseEvent status translations"
Description: "AdverseEvent status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(adverse-event-status-cs, $event-status, 5.0.0)

* #in-progress "In Progress"
  * ^designation[0].language = #ru
  * ^designation[=].value = "В процессе"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jarayonda"
* #completed "Completed"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Завершено."
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yakunlangan"
* #entered-in-error "Entered in Error"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено ошибочно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
* #unknown "Unknown"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неизвестно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Noma’lum"

