ValueSet: AuditEventOutcomeVS
Id: audit-event-outcome-vs
Title: "Audit event outcome"
Description: "Defines the outcome of the event that is being recorded in Uzbek and Russian"
* ^experimental = true
* ^url = "https://terminology.medcore.uz/ValueSet/audit-event-outcome-vs"
* ^language = #uz
* $issue-severity#fatal
* $issue-severity#fatal ^designation[0].language = #ru
* $issue-severity#fatal ^designation[=].value = "Фатальная ошибка"
* $issue-severity#fatal ^designation[+].language = #uz
* $issue-severity#fatal ^designation[=].value = "Fatal xato"
* $issue-severity#error
* $issue-severity#error ^designation[0].language = #ru
* $issue-severity#error ^designation[=].value = "Ошибка"
* $issue-severity#error ^designation[+].language = #uz
* $issue-severity#error ^designation[=].value = "Xato"
* $issue-severity#warning
* $issue-severity#warning ^designation[0].language = #ru
* $issue-severity#warning ^designation[=].value = "Предупреждение"
* $issue-severity#warning ^designation[+].language = #uz
* $issue-severity#warning ^designation[=].value = "Ogohlantirish"
* $issue-severity#information
* $issue-severity#information ^designation[0].language = #ru
* $issue-severity#information ^designation[=].value = "Информация"
* $issue-severity#information ^designation[+].language = #uz
* $issue-severity#information ^designation[=].value = "Ma'lumot"
* $issue-severity#success
* $issue-severity#success ^designation[0].language = #ru
* $issue-severity#success ^designation[=].value = "Операция выполнена успешно"
* $issue-severity#success ^designation[+].language = #uz
* $issue-severity#success ^designation[=].value = "Operatsiya muvaffaqiyatli yakunlandi"
