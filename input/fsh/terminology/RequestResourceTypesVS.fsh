ValueSet: RequestResourceTypesVS
Id: request-resource-types-vs
Title: "Request resource types"
Description: "All request resource types allowed by FHIR R5 ActivityDefinition.kind, with Uzbek and Russian designations."

* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/request-resource-types-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(RequestResourceTypesCS)

// Reuse the complete base list; a national subset would unnecessarily restrict ActivityDefinition.kind.
* include codes from valueset $base-request-resource-types
