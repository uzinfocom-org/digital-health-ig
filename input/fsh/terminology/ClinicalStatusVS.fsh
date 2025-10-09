ValueSet: ClinicalStatusVS
Id: clinical-status-vs
Title: "Types of clinical status"
Description: "Types of clinical status in Uzbekistan"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/clinical-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ClinicalStatusCS)

* include codes from system $condition-clinical
