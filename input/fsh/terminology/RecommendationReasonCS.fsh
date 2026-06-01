CodeSystem: RecommendationReasonCS
Id: recommendation-reason-cs
Title: "Immunization reason translations"
Description: "Immunization recommendation reason supplement with Uzbek and Russian translations"

* insert SupplementCodeSystemDraft(recommendation-reason-cs, $sct, 2026-01)

* #77176002 "Smoker"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Курение"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Chekish"

* #77386006 "Pregnancy"
  * ^designation[0].language = #ru
  * ^designation[=].value = "Беременность"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Homiladorlik"