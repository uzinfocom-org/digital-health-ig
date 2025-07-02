ValueSet: AuditEventActionVS
Id: audit-event-action-vs
Title: "Audit event action"
Description: "Defines audit event action that is being recorded in Uzbek and Russian"
* ^experimental = true
* ^url = "https://terminology.medcore.uz/ValueSet/audit-event-action-vs"
* ^language = #uz
* $audit-event-action#C
* $audit-event-action#C ^designation[0].language = #ru
* $audit-event-action#C ^designation[=].value = "Создать"
* $audit-event-action#C ^designation[+].language = #uz
* $audit-event-action#C ^designation[=].value = "Yaratish"
* $audit-event-action#R
* $audit-event-action#R ^designation[0].language = #ru
* $audit-event-action#R ^designation[=].value = "Читать"
* $audit-event-action#R ^designation[+].language = #uz
* $audit-event-action#R ^designation[=].value = "O'qing"
* $audit-event-action#U
* $audit-event-action#U ^designation[0].language = #ru
* $audit-event-action#U ^designation[=].value = "Обновить"
* $audit-event-action#U ^designation[+].language = #uz
* $audit-event-action#U ^designation[=].value = "Yangilash"
* $audit-event-action#D
* $audit-event-action#D ^designation[0].language = #ru
* $audit-event-action#D ^designation[=].value = "Удалить"
* $audit-event-action#D ^designation[+].language = #uz
* $audit-event-action#D ^designation[=].value = "O'chirish"
* $audit-event-action#E
* $audit-event-action#E ^designation[0].language = #ru
* $audit-event-action#E ^designation[=].value = "Выполнить"
* $audit-event-action#E ^designation[+].language = #uz
* $audit-event-action#E ^designation[=].value = "Bajarish"
