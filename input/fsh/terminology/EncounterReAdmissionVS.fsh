ValueSet: EncounterReAdmissionVS
Id: encounter-reAdmission-vs
Title: "Encounter readmission"
Description: "Encounter readmission indicators"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/encounter-reAdmission-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(EncounterReAdmissionCS)

* include codes from system $v2-admission
* include codes from system re-admission-local-cs