ValueSet: ResourceTypeVS
Id: resource-type-vs
Title: "Resource type"
Description: "Resource types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/resource-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(FhirTypesCS)

* include codes from system $resource-types