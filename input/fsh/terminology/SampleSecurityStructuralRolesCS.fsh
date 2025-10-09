CodeSystem: SampleSecurityStructuralRolesCS
Id: sample-security-structural-roles-cs
Title: "Sample security structural roles"
Description: "Sample security structural roles with translations in Uzbek and Russian, used in DHP as actual codes"
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
