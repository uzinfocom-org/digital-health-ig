ValueSet: UCUMUnitsSupplementVS
Id: ucum-units-supp-vs
Title: "UCUM unit"
Description: "UCUM units"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/ucum-units-supp-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(UCUMUnitsSupplementCS)

* include codes from system $ucum
