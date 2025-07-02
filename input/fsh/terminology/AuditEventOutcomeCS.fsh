CodeSystem: AuditEventOutcomeCS
Id: audit-event-outcome-cs
Title: "Audit event outcome translations"
Description: "Audit event outcome supplement with translations"
* ^url = "https://terminology.medcore.uz/CodeSystem/audit-event-outcome-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $issue-severity
* ^version = "5.0.0"
* ^language = #en
* #fatal
  * ^designation[0].language = #ru
  * ^designation[=].value = "Фатальная ошибка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Fatal xato"
* #error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Ошибка"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xato"
* #warning
  * ^designation[0].language = #ru
  * ^designation[=].value = "Предупреждение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ogohlantirish"
* #information
  * ^designation[0].language = #ru
  * ^designation[=].value = "Информация"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ma'lumot"
* #success
  * ^designation[0].language = #ru
  * ^designation[=].value = "Операция выполнена успешно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Operatsiya muvaffaqiyatli yakunlandi"
