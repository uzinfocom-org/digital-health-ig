ValueSet: AuditParticipationRoleTypeVS
Id: audit-participation-role-type-vs
Title: "Audit event role type"
Description: "Defines how the participant participated in Uzbek and Russian"
* ^experimental = true
* ^url = "https://terminology.medcore.uz/ValueSet/audit-participation-role-type-vs"
* ^language = #uz
* $extra-security-role-type#humanuser
  * ^designation[0].language = #ru
  * ^designation[=].value = "Пользователь"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Foydalanuvchi"
* $dicom-dcm#110150
  * ^designation[0].language = #ru
  * ^designation[=].value = "Приложение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Ilova"
