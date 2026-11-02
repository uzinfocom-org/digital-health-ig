CodeSystem: MedicationAdministrationPerformerFunctionCS
Id: medicationadministration-performer-function-cs
Title: "MedicationAdministration performer function translations"
Description: "MedicationAdministration performer function supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(medicationadministration-performer-function-cs, $medication-administration-performer-function-codes, 1.0.1)

* #performer
  * ^designation[0].language = #uz
  * ^designation[=].value = "Ijrochi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Исполнитель"

* #verifier
  * ^designation[0].language = #uz
  * ^designation[=].value = "Tekshiruvchi"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Проверяющий"

* #witness
  * ^designation[0].language = #uz
  * ^designation[=].value = "Guvoh"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Свидетель"
