ValueSet: NameUseVS
Id: name-use-vs
Title: "Name use"
Description: "Name uses"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/name-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(NameUseCS)

* include codes from system $name-use
