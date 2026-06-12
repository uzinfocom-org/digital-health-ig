CodeSystem: SpecimenCombinedCS
Id: specimen-combined-cs
Title: "Specimen combined status translations"
Description: "Specimen combined status, supplemented with translations in Uzbek and Russian"
* insert SupplementCodeSystemDraft(specimen-combined-cs, $specimen-combined, 5.0.0)

* #grouped
  * ^designation[0].language = #ru
  * ^designation[=].value = "сгруппированный"
  * ^designation[+].language = #uz
  * ^designation[=].value = "guruhlangan"
* #pooled
  * ^designation[0].language = #ru
  * ^designation[=].value = "объединённый"
  * ^designation[+].language = #uz
  * ^designation[=].value = "birlashtirilgan"

