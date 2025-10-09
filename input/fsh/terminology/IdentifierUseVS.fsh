ValueSet: IdentifierUseVS
Id: identifier-use-vs
Title: "Types of possible identifier uses"
Description: "Defines the `use` of an identifier in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/identifier-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(IdentifierUseCS)

* include codes from system $identifier-use
