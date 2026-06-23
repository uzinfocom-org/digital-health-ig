ValueSet: RecommendationDateCriterionVS
Id: recommendation-date-criterion-vs
Title: "Immunization recommendation date criterion value set"
Description: "Immunization recommendation date criteria codes with Uzbek and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/recommendation-date-criterion-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RecommendationDateCriterionCS)

* $loinc#30981-5 "Earliest date to give"
* $loinc#30980-7 "Date vaccine due"
* $loinc#59777-3 "Latest date to give immunization"
* $loinc#59778-1 "Date when overdue for immunization"
