ValueSet: NameUseVS
Id: name-use-vs
Title: "Types of possible name uses"
Description: "Defines the different uses of a name in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/name-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(NameUseCS)
* ^version = "5.0.0"

* include codes from system $name-use
