CodeSystem: ObservationNormalValueCS
Id: observation-normal-value-cs
Title: "Observation normal value translations"
Description: "Translation of observation's normal value concept into Uzbek and Russian"
* insert SupplementCodeSystemDraft(observation-normal-value-cs, $observation-referencerange-normalvalue, 5.0.0)

* #negative
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отрицательно"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Manfiy"
* #absent
  * ^designation[0].language = #ru
  * ^designation[=].value = "Отсутствует"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Mavjud emas"
