ValueSet: IdentifierUseVS
Id: identifier-use-vs
Title: "Identifier use"
Description: "Identifier uses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/identifier-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(IdentifierUseCS)

* include codes from system $identifier-use
