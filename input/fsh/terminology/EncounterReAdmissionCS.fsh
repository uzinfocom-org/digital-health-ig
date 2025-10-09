CodeSystem: EncounterReAdmissionCS
Id: encounter-reAdmission-cs
Title: "Encounter admission translations"
Description: "Encounter readmission codes with English and Russian translations"
* insert SupplementCodeSystem(encounter-reAdmission-cs, $v2-admission, 2.0.0)

* #R 
  * ^designation[0].language = #uz
  * ^designation[=].value = "Qayta ko'rik"
  * ^designation[+].language = #ru
  * ^designation[=].value = "Повторный приём"
  