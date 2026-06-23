CodeSystem: AdverseEventActualityCS
Id: adverse-event-actuality-cs
Title: "AdverseEvent actuality translations"
Description: "AdverseEvent actuality supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(adverse-event-actuality-cs, $adverse-event-actuality, 5.0.0)

* #actual
  * ^designation[0].language = #ru
  * ^designation[=].value = "Нежелательное событие"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Nojo‘ya hodisa"
* #potential
  * ^designation[0].language = #ru
  * ^designation[=].value = "Потенциальное нежелательное событие"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Potensial nojo‘ya hodisa."