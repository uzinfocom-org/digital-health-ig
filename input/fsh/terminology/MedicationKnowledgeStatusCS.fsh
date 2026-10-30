CodeSystem: MedicationKnowledgeStatusCS
Id: medicationknowledge-status-cs
Title: "Medication knowledge status translations"
Description: "Medication knowledge status supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(medicationknowledge-status-cs, $medicationknowledge-status, 5.0.0)

* #active
  * ^designation[0].language = #uz
  * ^designation[=].value = "Faol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Активный"
* #inactive
  * ^designation[0].language = #uz
  * ^designation[=].value = "Nofaol"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Неактивный"
* #entered-in-error
  * ^designation[0].language = #uz
  * ^designation[=].value = "Xato kiritilgan"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Внесён по ошибке"