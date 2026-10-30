ValueSet: RecommendationReasonVS
Id: recommendation-reason-vs
Title: "Immunization recommendation reason"
Description: "Immunization recommendation reasons"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/recommendation-reason-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RecommendationReasonCS)

// * include codes from system $sct
* include codes from system $sct where concept is-a #404684003

// * $sct#77176002 "Smoker"
// * $sct#77386006 "Pregnancy"
