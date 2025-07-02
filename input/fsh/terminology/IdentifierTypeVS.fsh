ValueSet: IdentifierTypeVS
Id: identifier-type-vs
Title: "Types of possible identifiers"
Description: "Defines identifier `type`s in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/identifier-type-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(IdentifierTypeCS)
* ^version = "5.0.0"

* include codes from system $identifier-type
