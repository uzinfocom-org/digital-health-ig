ValueSet: UCUMUnitsSupplementVS
Id: ucum-units-supp-vs
Title: "UCUM Units Supplement ValueSet"
Description: "UCUM units with Uzbek and Russian translation supplements."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ucum-units-supp-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(UCUMUnitsSupplementCS)

* include codes from system $ucum
