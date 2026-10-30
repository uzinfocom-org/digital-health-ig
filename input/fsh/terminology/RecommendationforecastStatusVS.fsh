ValueSet: RecommendationforecastStatusVS
Id: recommendation-forecast-status-vs
Title: "Immunization recommendation forecast status"
Description: "Immunization recommendation forecast statuses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/recommendation-forecast-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RecommendationforecastStatusCS)

* $immunization-recommendation-status#due "Due"
* $immunization-recommendation-status#overdue "Overdue"
* $immunization-recommendation-status#immune "Immune"
* $immunization-recommendation-status#contraindicated "Contraindicated"
