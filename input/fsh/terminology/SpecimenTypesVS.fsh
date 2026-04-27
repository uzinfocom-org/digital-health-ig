ValueSet: SpecimenTypesVS
Id: specimen-types-vs
Title: "Specimen types"
Description: "Uzbekistan local specimen types"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/specimen-types-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(SpecimenTypesCS)

* include codes from system $v2-0487
* include codes from system specimen-types-loc-cs
