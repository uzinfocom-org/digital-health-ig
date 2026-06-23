CodeSystem: ObservationRangeCategoryCS
Id: observation-range-category-cs
Title: "Observation range category translations"
Description: "Observation range category supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(observation-range-category-cs, $observation-range-category, 5.0.0)

* #reference
  * ^designation[0].language = #ru
  * ^designation[=].value = "референсный диапазон"
  * ^designation[+].language = #uz
  * ^designation[=].value = "referens diapazon (me’yor)"
* #critical
  * ^designation[0].language = #ru
  * ^designation[=].value = "критический диапазон"
  * ^designation[+].language = #uz
  * ^designation[=].value = "kritik diapazon"
* #absolute
  * ^designation[0].language = #ru
  * ^designation[=].value = "абсолютный диапазон"
  * ^designation[+].language = #uz
  * ^designation[=].value = "mutlaq diapazon"