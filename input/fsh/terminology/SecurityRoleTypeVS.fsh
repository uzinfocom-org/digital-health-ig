ValueSet: SecurityRoleTypeVS
Id: security-role-type-vs
Title: "Security role type"
Description: "Defines the role of the participant that is being recorded in Uzbek and Russian"
* ^experimental = true
* ^url = "https://terminology.medcore.uz/ValueSet/security-role-type-vs"
* ^language = #uz
* $sample-security-structural-codes#regulated-health-professionals
* $sample-security-structural-codes#regulated-health-professionals ^designation[0].language = #ru
* $sample-security-structural-codes#regulated-health-professionals ^designation[=].value = "Регулируемые специалисты здравоохранения"
* $sample-security-structural-codes#regulated-health-professionals ^designation[+].language = #uz
* $sample-security-structural-codes#regulated-health-professionals ^designation[=].value = "Tartibga solinadigan sog'liqni saqlash mutaxassislari"
* $sample-security-structural-codes#non-regulated-health-professionals
* $sample-security-structural-codes#non-regulated-health-professionals ^designation[0].language = #ru
* $sample-security-structural-codes#non-regulated-health-professionals ^designation[=].value = "Нерегулируемые специалисты здравоохранения"
* $sample-security-structural-codes#non-regulated-health-professionals ^designation[+].language = #uz
* $sample-security-structural-codes#non-regulated-health-professionals ^designation[=].value = "Tartibga solinmagan sog'liqni saqlash mutaxassislari"
