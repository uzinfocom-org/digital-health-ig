ValueSet: RecommendationReasonVS
Id: recommendation-reason-vs
Title: "Immunization recommendation reason value set"
Description: "Immunization recommendation reason codes with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/recommendation-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RecommendationReasonCS)

* $sct#77176002 "Smoker"
* $sct#77386006 "Pregnancy"
