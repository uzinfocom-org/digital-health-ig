CodeSystem: RequestResourceTypesCS
Id: request-resource-types-cs
Title: "Request resource types"
Description: "FHIR request resource types in Uzbekistan"
* insert SupplementCodeSystemDraft(request-resource-types-cs, $resource-types, 5.0.0)

* #ImmunizationRecommendation
  * ^designation[0].language = #ru
  * ^designation[=].value = "Рекомендация по вакцинации"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Emlash tavsiyasi"

* #MedicationRequest
  * ^designation[0].language = #ru
  * ^designation[=].value = "Запрос на медикаменты"
  * ^designation[+].language = #uz
  * ^designation[=].value = "Dori so'rovi"