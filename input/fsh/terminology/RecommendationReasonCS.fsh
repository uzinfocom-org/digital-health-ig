CodeSystem: RecommendationReasonCS
Id: recommendation-reason-cs
Title: "Immunization recommendation reason translations"
Description: "Immunization recommendation reason supplement with translations in Uzbek and Russian"

* insert SupplementCodeSystemDraft(recommendation-reason-cs, $sct, 2026.1.0)

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