ValueSet: VaccineCodeVS
Id: vaccine-code-vs
Title: "Vaccine Code ValueSet"
Description: "Vaccine codes of CVX and URN "
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/vaccine-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(VaccineCodeCS)
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(VaccineURNCodeCS)

* include codes from system $aire-vaccine
* include codes from system $cvx