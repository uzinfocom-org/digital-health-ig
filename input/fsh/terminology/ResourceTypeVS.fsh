ValueSet: ResourceTypeVS
Id: resource-type-vs
Title: "Resource types"
Description: "Resource type supplement with translations in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/resource-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ParticipantResourceTypeCS)

* include codes from system $resource-types