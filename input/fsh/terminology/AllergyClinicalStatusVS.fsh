ValueSet: AllergyClinicalStatusVS
Id: allergy-clinical-status-vs
Title: "Allergy clinical status value set"
Description: "Value set defining codes that represent the clinical status of an allergy or intolerance."
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/allergy-clinical-status-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(AllergyClinicalStatusCS)

* include codes from system $allergy-clinical
