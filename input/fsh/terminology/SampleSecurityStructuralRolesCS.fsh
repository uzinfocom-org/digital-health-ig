CodeSystem: SampleSecurityStructuralRolesCS
Id: sample-security-structural-roles-cs
Title: "Security structural role translations"
Description: "Security structural role supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(sample-security-structural-roles-cs, $sample-security-structural-codes, 5.0.0)
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
