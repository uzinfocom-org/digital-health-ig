CodeSystem: EncounterReAdmissionCS
Id: encounter-reAdmission-cs
Title: "Encounter admission translations"
Description: "Encounter readmission supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystem(encounter-reAdmission-cs, $v2-admission, 2.0.0)

* #R 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qayta ko'rik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Повторный приём"
  