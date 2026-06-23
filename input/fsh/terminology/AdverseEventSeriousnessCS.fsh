CodeSystem: AdverseEventSeriousnessCS
Id: adverse-event-seriousness-cs
Title: "AdverseEvent seriousness translations"
Description: "AdverseEvent seriousness supplement with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(adverse-event-seriousness-cs, $adverse-event-seriousness, 1.0.1)

* #non-serious
  * ^designation[0].language = #ru
  * ^designation[=].value = "Несерьёзное"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jiddiy emas"
* #serious
  * ^designation[0].language = #ru
  * ^designation[=].value = "Серьёзное"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Jiddiy"