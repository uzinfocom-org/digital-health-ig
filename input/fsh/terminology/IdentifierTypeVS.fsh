ValueSet: IdentifierTypeVS
Id: identifier-type-vs
Title: "Identifier type"
Description: "Identifier types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/identifier-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(IdentifierTypeCS)

* include codes from system $identifier-type
