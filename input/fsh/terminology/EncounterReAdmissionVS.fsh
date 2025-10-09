ValueSet: EncounterReAdmissionVS
Id: encounter-reAdmission-vs
Title: "Encounter admission translations"
Description: "Encounter readmission codes with English and Russian translations"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-reAdmission-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterReAdmissionCS)

* include codes from system $v2-admission
