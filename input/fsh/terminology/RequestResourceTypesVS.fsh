ValueSet: RequestResourceTypesVS
Id: request-resource-types-vs
Title: "Request resource types"
Description: "FHIR request resource types in Uzbekistan"

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/request-resource-types-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestResourceTypesCS)

* include $resource-types#ImmunizationRecommendation
* include $resource-types#MedicationRequest