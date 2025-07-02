CodeSystem: SecurityRoleTypeCS
Id: security-role-type-cs
Title: "Security role type translations"
Description: "Security role type supplement with translations"
* ^url = "https://terminology.medcore.uz/CodeSystem/security-role-type-cs"
* ^experimental = true
* ^content = #supplement
* ^supplements = $sample-security-structural-codes
* ^version = "5.0.0"
* ^language = #en
* #regulated-health-professionals
  * ^designation[0].language = #ru
  * ^designation[=].value = "Регулируемые специалисты здравоохранения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tartibga solinadigan sog'liqni saqlash mutaxassislari"
* #non-regulated-health-professionals
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нерегулируемые специалисты здравоохранения"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Tartibga solinmagan sog'liqni saqlash mutaxassislari"
