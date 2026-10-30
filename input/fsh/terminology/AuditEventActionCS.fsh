CodeSystem: AuditEventActionCS
Id: audit-event-action-cs
Title: "AuditEvent action translations"
Description: "AuditEvent action supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(audit-event-action-cs, $audit-event-action, 5.0.0)
* #C
  * ^designation[0].language = #ru
  * ^designation[=].value = "Создать"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yaratish"
* #R
  * ^designation[0].language = #ru
  * ^designation[=].value = "Читать"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'qing"
* #U
  * ^designation[0].language = #ru
  * ^designation[=].value = "Обновить"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Yangilash"
* #D
  * ^designation[0].language = #ru
  * ^designation[=].value = "Удалить"
  * ^designation[+].language = #uz
  * ^designation[=].value = "O'chirish"
* #E
  * ^designation[0].language = #ru
  * ^designation[=].value = "Выполнить"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Bajarish"
