CodeSystem: MedicationStatusCS
Id: medication-status-cs
Title: "Medication status translations"
Description: "Medication status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(medication-status-cs, $medication-status, 5.0.0)

* #active
  * ^designation[0].language = #ru
  * ^designation[=].value = "Активно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol"
* #inactive
  * ^designation[0].language = #ru
  * ^designation[=].value = "Неактивно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Faol emas"
* #entered-in-error
  * ^designation[0].language = #ru
  * ^designation[=].value = "Введено по ошибке"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Xatoda kiritilgan"
