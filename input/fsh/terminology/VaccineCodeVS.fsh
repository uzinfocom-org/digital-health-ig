ValueSet: VaccineCodeVS
Id: vaccine-code-vs
Title: "Vaccine Code ValueSet"
Description: "Vaccine codes from CVX and the Australian Immunisation Register Vaccine code systems, with Uzbek and Russian translation supplements."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/vaccine-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(CVXVaccineTranslationsCS)
* ^extension[+].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AIRVaccineTranslationsCS)

* include codes from system $cvx
* include codes from system $air-vaccine