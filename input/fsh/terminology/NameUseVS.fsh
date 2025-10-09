ValueSet: NameUseVS
Id: name-use-vs
Title: "Types of possible name uses"
Description: "Defines the different uses of a name in Uzbek and Russian"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/name-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(NameUseCS)

* include codes from system $name-use
